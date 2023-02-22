[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/trussworks/trussels-guide/main.svg)](https://results.pre-commit.ci/latest/github/trussworks/trussels-guide/main)

# trussels-guide

The source for [guide.truss.works](https://guide.truss.works).

## How to make a change

The Trussel's Guide is important documentation and needs to be correct. Anybody from Truss should feel free to submit a pull request to change the guide. We use the `CODEOWNERS` file to keep track of who should review and merge PRs.

## Architecture

The guide is hosted on Github Pages. DNS is managed via the Truss AWS account. Merges to `main` deploy in a couple of minutes.

Github Pages acts like Jekyll, more or less.

## Local testing

The following methods will result in the site being available at [http://localhost:4000](http://localhost:4000). However, for small changes, it's easier to use Github's web editor.

### Local Ruby

If you have `asdf` configured , you can run the following:

```sh
asdf install
bundle install
bundle exec jekyll serve
```

### Troubleshooting

If our dependencies become out of date, you'll need to update them. Here's an example where the version of `octokit` we were using was no longer available:

```
$ bundle install
Fetching gem metadata from http://rubygems.org/...........
Your bundle is locked to octokit (4.17.0), but that version could not be found in any of the sources listed in your Gemfile.
```

In this case, you'll need to update the dependency:

```sh
bundle update octokit
```
