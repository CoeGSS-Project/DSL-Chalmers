#!/bin/sh
for I in {0..4}; do
  python3 $DSLP_RUNTIME/dslp_runtime.py task_$I.json; done
