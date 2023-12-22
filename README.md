# training_dagster
training repo for Dagster related projects

## handy links
- https://www.gitpod.io/docs/introduction/languages/python
- https://dagster.io/blog/dagster-dlt

## Setup Gitpod Env
pyenv install <version>  # (_eg. **3.10**_)  
pyenv local <version> # (_eg. **3.10.13**_)
> currently the pendulum package will not install in python 3.12  
> {_reported by Sunny: 2023-11-11_}

then refer to _setup.txt_ for project specific setup




# Getting set up[#](https://docs.dagster.io/tutorial/setup#tutorial-part-two-getting-set-up)

To complete this tutorial, you'll need:

- **To install Python and pip.** This tutorial assumes that you have some familiarity with Python, but you should be able to follow along even if you're coming from a different programming language. To check that Python and `pip` (Python's package manager) are already installed in your environment or install them, follow the instructions [here](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/).
    
    Dagster supports Python 3.8+.
    
- **To install Dagster**. Run the following command from your terminal:
    
    ```bash
    pip install dagster
    ```
    

---

## Creating your first Dagster project[#](https://docs.dagster.io/tutorial/setup#creating-your-first-dagster-project)

To verify that you successfully installed Dagster, let's create your first Dagster project! You'll use the Dagster scaffolding command to give you an empty Dagster project that you can run locally.

To create the project, run:

```bash
dagster project from-example --example tutorial
```

After running this command, you should see a new directory called `tutorial` in your current directory. This directory contains the files that make up your Dagster project. Next, you'll install the Python dependencies you'll be using during the tutorial.

```bash
cd tutorial
pip install -e ".[dev]"
```

This command also installs packages that aren't necessary for every Dagster project but are used for this tutorial. You don't have to read up on them, but if you're curious:

- `requests` will be used to download data from the internet
- `pandas` is a popular library for working with tabular data
- `matplotlib` makes it easy to make charts in Python
- `dagster_duckdb` manages how Dagster can read and write to DuckDB, an in-process data warehouse similar to SQLite, that you'll use for this tutorial
- `dagster_duckdb_pandas` allows loading data from DuckDB into Pandas DataFrames
- `Faker` is a library for generating fake data

The `-e` flag installs the project in [editable mode](https://pip.pypa.io/en/stable/reference/pip_install/#editable-installs), which means that most changes you make in your Dagster project will automatically be applied. The main exceptions are when you're adding new assets or installing additional dependencies.

To verify that it worked and that you can run Dagster locally, run:

```bash
dagster dev
```

Navigate to [localhost:3000](http://localhost:3000/). You should see the Dagster UI. This command will run Dagster until you're ready to stop it. To stop the long-running process, press Control+C from the terminal that the process is running on.

If you'd like an explanation of what files were made and why, refer to the [Creating a new Dagster project guide](https://docs.dagster.io/getting-started/create-new-project#using-the-default-project-skeleton).

---

## Ready to get started?[#](https://docs.dagster.io/tutorial/setup#ready-to-get-started)

When you've made your first Dagster project, you are ready to start writing your own pipeline by [creating your first asset](https://docs.dagster.io/tutorial/writing-your-first-asset).