# trussels-guide

The source for https://guide.truss.works

## How to make a change

The Trussel's Guide is important documentation and needs to be correct. Anybody from Truss should feel free to submit a pull request to change the guide. We use the `CODEOWNERS` file to keep track of who should review and merge PRs.

## Architecture

The guide is hosted on Github Pages. DNS is managed via the Truss AWS account. Merges to `master` deploy in a couple of minutes.

Github Pages acts like Jekyll, more or less.

## Local testing

`bundle exec jekyll serve`

Then see the site on http://localhost:4000

