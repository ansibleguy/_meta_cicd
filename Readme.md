# AnsibleGuy - Internal CICD

This is the very basic setup I use to test my roles and collections.

## Tests

### Roles
* [Molecule](https://molecule.readthedocs.io/en/latest/) => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/molecule.sh.j2)
* [Yamllint](https://yamllint.readthedocs.io/en/stable/) => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/yamllint.sh.j2)
* [Ansible Lint](https://ansible-lint.readthedocs.io/en/latest/) => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/ansiblelint.sh.j2)
* [PyLint](https://pylint.readthedocs.io/en/latest/) => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/pylint.sh.j2)

### Collections
* Linting => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/collection_lint.sh.j2)
* Tests => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/collection_test.sh.j2)

## Logs
Errors of failed tests will be logged [in this directory](https://badges.ansibleguy.net/log/).
