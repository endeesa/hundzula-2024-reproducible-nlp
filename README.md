# Hundzula 2024 - Reproducible NLP experiments with DVC and CometML

- **Author**: [Ndamulelo Nemakhavhani](https://blog.ndamulelo.co.za/about)
- Code for my talk on Reproducible NLP experiments with DVC and CometML given at the Hundzula Retreat 2024

<br/>

# Pre-requisites

- [Ubuntu](https://ubuntu.com/download) - This example uses Ubuntu 20.04 LTS. You can use any other OS, but you may need to modify the installation commands accordingly.
- **Environment variables**: You need to set the following environment variables:
    ```bash
    export COMET_API_KEY="your-comet"
    export AZURE_STORAGE_CONNECTION_STRING="your-central-dvc-data-storage-auth"
    ```

<br/>

# Quickstart

- Since this project already has DVC setup, all you need to do is clone the repository and run `dvc pull` to get the data and models.

```bash
git clone git@github.com:ndamulelonemakh/hundzula-2024-reproducible-nlp.git
cd hundzula-2024-reproducible-nlp

## Install the dependencies
bash scripts/install.sh
pip install -r requirements.txt
# poetry install   # reommended if you have poetry installed

dvc pull
```

- At this point, you can either choose a particular DVC step to reproduce or run the entire training pipeline.

```bash

# Reproduce the preprocess step defined in dvc.yaml
dvc repro preprocess


# Reproduce the entire pipeline
dvc repro
```

- For more on DVC, see the [DVC documentation](https://dvc.org/doc)

<br/>


## CO


## Project Organization

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.readthedocs.io

---


# Related Links

* [Dvc getting started repo](https://github.com/iterative/example-get-started.git)

---

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
