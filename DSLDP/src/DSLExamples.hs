{-# LANGUAGE TemplateHaskell, QuasiQuotes, GADTs, DataKinds, FlexibleContexts, PatternSynonyms, PolyKinds #-}
module DSLExamples where

import Data.Word
import Control.Monad

import Language.Haskell.TH.Syntax (Q)
import qualified Language.Haskell.TH.Syntax (TExp)

import qualified Language.C.Syntax as CSyntax

import Text.PrettyPrint.Mainland
import Text.PrettyPrint.Mainland.Class

import System.IO

import DSL
import C

-- Data mapping definitions

incomeMapQ :: Mapping
incomeMapQ =
  [[-9, -8, -7, 0] |-> "NoData"]
  `defCase` "IData"

eduMapQ :: Mapping
eduMapQ =
  [[-9, -8, -6] |-> "UNK",
   [1]          |-> "ED5_6",
   [2]          |-> "ED3",
   [3]          |-> "ED2",
   [4]          |-> "ED0_1"]
  `noDefCase` ()

-- DSLD properties

prop1 :: Maybe String -> Bool
prop1 (Just "UNK")      = False
prop1 (Just "ED5_6")    = True
prop1 (Just "ED3")      = True
prop1 (Just "ED2")      = True
prop1 (Just "ED0_1")    = True
prop1 Nothing           = False

prop2 :: Maybe String -> Bool
prop2 (Just "UNK") = False
prop2 (Just "IData")  = True
prop2 Nothing         = False


prop1Expr = toTExp eduMapQ prop1

-- Generate DSLD property checker

dsldGenProp1 = genProp "property_checker.c" [("col1", prop1Expr)]


-- DSLP definitions

edu_table = marginalTable "edu_table.csv" ["isced97"]
pop_table = marginalTable "pop_table.csv" ["age", "sex"]

marginals = [edu_table, pop_table]

microSample = microSampleTable "Ghs06client.tab" ["Sex", "age", "EDLEV10", "GREARN"]

mappingAge = ranges
  [[0, 14]   |-> "Y_LT15",
   [15, 19]  |-> "Y15-19",
   [20, 24]  |-> "Y20-24",
   [25, 29]  |-> "Y25-29",
   [30, 34]  |-> "Y30-34",
   [35, 39]  |-> "Y35-39",
   [40, 44]  |-> "Y40-44",
   [45, 49]  |-> "Y45-49",
   [50, 54]  |-> "Y50-54",
   [55, 59]  |-> "Y55-59",
   [60, 64]  |-> "Y60-64",
   [65, 69]  |-> "Y65-69",
   [70, 74]  |-> "Y70-74",
   [75, 120] |-> "Y_GE75"
  ]

mappingSex :: Mapping
mappingSex =
  [[1]    |-> "M",
   [2]    |-> "F"]
  `noDefCase` ()

synPop1 = [generatePop
                (region ++ " ") marginals microSample
                (mappings [("Sex", "sex", mappingSex),
                           ("age", "age", mappingAge),
                           ("EDLEV10", "isced97", eduMapQ)])
                ["Sex", "age", "GRIND"] -- Attributes in the synthetic population
                                        -- (sex, age, gross individual income)
                ("out_" ++ region)
               | region <- ["UKC11", "UKC12", "UKC13", "UKC14", "UKC21"]]

-- Output script for generating syntheric populations for 5 regions
dslpSynPop1 :: IO ()
dslpSynPop1 = doGenerate synPop1

-- Output script for generating syntheric populations for 5 regions,
-- suitable for local execution
dslpSynPop1Local :: IO ()
dslpSynPop1Local = doGenerateSimple synPop1



