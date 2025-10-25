# AnsibleGuy - Internal CICD

This is the very basic setup I use to test my roles and collections.

[![Lint](https://github.com/O-X-L/ansible-role-oxl-cicd/actions/workflows/lint.yml/badge.svg)](https://github.com/O-X-L/ansible-role-oxl-cicd/actions/workflows/lint.yml)

## Tests

### Roles
* [Molecule](https://molecule.readthedocs.io/en/latest/) => [Script](https://github.com/O-X-L/ansible-role-oxl-cicd/blob/latest/templates/usr/local/bin/cicd/molecule.sh.j2)
* [Yamllint](https://yamllint.readthedocs.io/en/stable/) => [Script](https://github.com/O-X-L/ansible-role-oxl-cicd/blob/latest/templates/usr/local/bin/cicd/yamllint.sh.j2)
* [Ansible Lint](https://ansible-lint.readthedocs.io/en/latest/) => [Script](https://github.com/O-X-L/ansible-role-oxl-cicd/blob/latest/templates/usr/local/bin/cicd/ansiblelint.sh.j2)
* [PyLint](https://pylint.readthedocs.io/en/latest/) => [Script](https://github.com/O-X-L/ansible-role-oxl-cicd/blob/latest/templates/usr/local/bin/cicd/pylint.sh.j2)

### Collections
* Linting => [Script](https://github.com/O-X-L/ansible-role-oxl-cicd/blob/latest/templates/usr/local/bin/cicd/collection_lint.sh.j2)
* Tests => [Script](https://github.com/O-X-L/ansible-role-oxl-cicd/blob/latest/templates/usr/local/bin/cicd/collection_test.sh.j2)

## Logs
Errors of failed tests will be logged [in this directory](https://badges.oss.oxl.app/log/).

----

## API for GitHub-Workflow integration

To gain transparency a CI-API will be used from GitHub-Actions to check job-stati and fetch the latest logs.

The sources for that CI-API can be found here: [O-X-L/github-self-hosted-jobs-systemd](https://github.com/O-X-L/github-self-hosted-jobs-systemd)
