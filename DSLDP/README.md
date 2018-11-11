# DSLD and DSLP implementation

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
$ ./property_checker ../test.csv
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


