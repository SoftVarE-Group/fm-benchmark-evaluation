# Replication package for Evaluating Feature-Model Collection (SPLC'24)


### Steps to reproduce

1. Get feature models from the [feature-model collection](https://zenodo.org/records/11652925). The models are not duplicated here due to their sizes.
2. Copy dimacs models (path/to/collection/feature_models/dimacs) to this directory: Expected paths for the script: dimacs/domain/system/modelname.dimacs
3. Run evaluation 
SAT: `python3 run.py run_configurations/sat.yaml`
#SAT: `python3 run.py run_configurations/sharpsat.yaml`
