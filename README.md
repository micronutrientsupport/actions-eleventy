# GitHub Action for Eleventy

Use this action to build your static website with [Eleventy](https://www.11ty.io/).

To use it, create a `.github/workflows/eleventy_build.yml` file which [uses this repository](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idsteps) as an action.

Here's an example which builds the site with this action, then deploys to GitHub Pages with [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages):

```yaml
name: Eleventy Build
on: [push]

jobs:
  build_deploy:
    runs-on: ubuntu-18.04
    steps:
      - uses: actions/checkout@master
      - name: Build
        uses: TartanLlama/actions-eleventy@v1.1
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v1.1.0
        env:
          PUBLISH_DIR: _site 
          PUBLISH_BRANCH: gh-pages
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

You can pass additional arguments to `eleventy` through the `args` option:

```yaml
- name: Build
  uses: TartanLlama/actions-eleventy@v1.1
  with:
    args: <additional arguments>
```
