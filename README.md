# Yarn & Percy CI
Build with Yarn, Snapshot with Percy

GitHub Action to build your project with Yarn followed by Percy snapshots.

## Under development

## Requirements

You'll need to set up a secret `PERCY_TOKEN`.

Read more about [secrets with GitHub](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables) and [Percy Token](https://docs.percy.io/docs/environment-variables).

## How to use

Copy and paste this in your workflow

```yaml
name: CI

on:
  pull_request:
    branches:
    - master

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - name: Yarn & Percy CI
      uses: jpvalery/yarn-percy-ci@master
      env:
        PERCY_TOKEN: ${{ secrets.PERCY_TOKEN }}

```
