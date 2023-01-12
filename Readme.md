# AnsibleGuy - Internal CICD

This is the very basic setup I use to test my roles and collections.

Testing is done using:

* [Molecule](https://molecule.readthedocs.io/en/latest/) => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/molecule.sh.j2)
* [Yamllint](https://yamllint.readthedocs.io/en/stable/) => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/yamllint.sh.j2)
* [Ansible Lint](https://ansible-lint.readthedocs.io/en/latest/) => [Script](https://github.com/ansibleguy/_meta_cicd/blob/latest/templates/usr/local/bin/cicd/ansiblelint.sh.j2)
