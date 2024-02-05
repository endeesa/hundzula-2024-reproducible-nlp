DVC Step-by-Step - Git for data 
===============================

0. This assumes you already have a git repository set up. Preferably with a project
structure recommended by cookiecutter.

1. dvc init
# Two files are created: .dvc/.gitignore and .dvc/config

2. Assuming your training data is publicly available on the internet:

```bash
dvc get https://example.com/data.zip data/data.zip -o data/mydata.zip

# assume zip contains a file called data.xml
```

3. Track the data file with dvc

```bash
dvc add data/mydata.zip

# This creates a file called data/mydata.zip.dvc
# Which can be added to git
git add data/mydata.zip.dvc data/.gitignore
git commit -m "Add data file"
```

- You file is now completely replaced by a small .dvc file that points to the data file. However the actual data 
is still cached in the .dvc/cache directory.

4. Now you can push the data to a remote storage

```bash
# use s3 as central storage
dvc remote add -d myremote s3://mybucket/data

# push the data to the remote
dvc push
```

- Note instead of S3 you can also use a local directory e.g. `/tmp/dvcstore`, ssh, google cloud, azure, etc.


Sharing the data with others
====

5. Now you can share the data with others. They can clone the git repository and run:

```bash
dvc pull

# This assumes the remote storage is already set up
```

6. If you want to view specific versions of the data, you can use the `dvc checkout` command.

```bash
git checkout <commit-id> <.dvc file>
dvc checkout
```