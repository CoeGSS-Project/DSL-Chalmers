# DSLD and DSLP implementation

This file describes the shared implementation of DSLD and DSLP.

## DSLD

*DSLD* is the DSL for defining the structure of data and specifying properties about data sets.  DSLD is part of the DSLs implemented in Task 3.4 (*Domain-specific languages for generating application-specific synthetic populations for GSS simulations*).

It is presented in the Deliverable 3.4 as follows:

> **DSL structure**:

> The DSL has the following structure:
> - Front-end The user specifies the characteristics and their types (possible values) and relations between them (e.g., if age is < 10 years old, then education level is not University)
> - Back-end The result is a generated C code for preparing and testing the data


## DSLP


*DSLP* builds on top of DSLD and is the DSL for defining synthetic population generation procedures.  DSLP is part of the DSLs implemented in Task 3.4 (*Domain-specific languages for generating application-specific synthetic populations for GSS simulations*).

It is presented in the Deliverable 3.4 as follows:

> **DSL structure**:

> - Front-end The user specifies the input data description using DSLD, and the procedure for generating the synthetic population using a set of primitive operations, like IPF or sampling
> - Back-end The result is a generation procedure implemented in C


## Running instructions


Build with stack:
```
stack build
```

Run ghci:
```
stack ghci
```

And try out the functions from DSLExamples, i.e.
```
*DSLExamples> dsldGenProp1
```
This will generate the file `property_checker.c` from DSLD definitions, which should be compiled
(requires libcsv to be installed).

```
$ clang -lcsv -o property_checker property_checker.c
```
Running the program with example data:

```
$ ./property_checker data/test.csv
```
Should yield the following result:
```
{"result": "failed"
"row": 2,
"column": 0,
"reason": "Property failed",
"field": "5" }
```

The following example will output scripts for generating example synthetic population.

```
*DSLExamples> dslpSynPop1Local
```

Running the function creates the `run_tasks.sh` script as well as 5 task definition files
`task_0.json` to `task_4.json`. The script requires the `DSLP_RUNTIME` environment
variable to contain the path to the DSLP runtime. Additionally the DSLP definition requires
the following files to be present in the current working directory:
`Ghs06client.tab`, `edu_table.csv` and `pop_table.csv`.
The files are not part of this distribution, as they contain confidential data.

Finally, we can also create scripts for generating synthetic population through Cloudify.
The following code will output a script suitable for use with a Cloudify blueprint:

```
*DSLExamples> dslpSynPop1
```

The resulting file `gen_tasks.sh` should be uploaded together with a Cloudify blueprint.
