# Replication package for Evaluating Feature-Model Collection (SPLC'24)

## Recommended usage with Docker

We provide a docker image for our empirical evaluation. To replicate the evaluation follow the steps below.
1. Login to ghcr. Find instructions [here](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry), even though the package is public log in seems neccessary.
2. Get image: `docker pull ghcr.io/sundermannc/fmbenchmarkeval:v1`
3. Run analyses:

   `docker run --name fmbenchmarksharpsat -d ghcr.io/sundermannc/fmbenchmarkeval:v1 run_configurations/sharpsat.yaml`
   
   `docker run --name fmbenchmarksat -d ghcr.io/sundermannc/fmbenchmarkeval:v1 run_configurations/sat.yaml`
4. Get results:

  `docker cp fmbenchmarksharpsat:benchmark/results/ results-sharpsat`
  
  `docker cp fmbenchmarksat:benchmark/results/ results-sat`
   



## Without docker
**Disclaimer:** We recommend using the docker container since setting up all solvers can be tricky, especially on non-Linux systems.

### Binaries
We only provide Linux binaries for the different solvers. As the different solvers depend on various Linux-only libraries, we recommend to use a Linux-based system or VM.

### Steps to reproduce

1. Get feature models from the [feature-model collection](https://zenodo.org/records/11652925). The models are not duplicated here due to their sizes.
2. Copy dimacs models (path/to/collection/feature_models/dimacs) to this directory: Expected paths for the script: dimacs/domain/system/modelname.dimacs
3. Run evaluation 
SAT: `python3 run.py run_configurations/sat.yaml`
#SAT: `python3 run.py run_configurations/sharpsat.yaml`
