# Yarn & Percy CI
Build with Yarn, Snapshot with Percy

GitHub Action to build your project with Yarn followed by Percy snapshots.

## Under development

## Requirements

You'll need to set up a secret `PERCY_TOKEN`.

Read more about [secrets with GitHub](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables) and [Percy Token](https://docs.percy.io/docs/environment-variables).

## How to upcase

```yaml
on: [push]

jobs:
  yarn_percy_ci_job:
    runs-on: ubuntu-latest
    name: Build with Yarn, Snapshot with Percy
    steps:
    - name: Yarn & Percy CI
      id: yarn-percy-ci
      uses: jpvalery/yarn-percy-ci@master
      env:
        PERCY_TOKEN: ${{ secrets.PERCY_TOKEN }}
```
