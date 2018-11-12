#!/bin/bash

# cfy executions delete -f 9613d0c1-ec87-4acf-baf0-bcd90744ee7a #(ID)
echo "Deleting deployment.."
cfy deployments delete -f single-sbatch-job
echo "Deleting blueprint.."
cfy blueprints delete single-sbatch-job
