# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This project will be usign semantic versioning for the tagging
[semver.org](https://semver.org/)

Given a version number MAJOR.MINOR.PATCH, increment the:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

## Terraform Basic

## Terraform Registry
Terraform source thier Providers and modules from the terraform registry which is located at [registry.terrafomr.io](https://registry.terraform.io)

- **Providers** it is an interfaces of APIs that provide acces to ressources in terraform.
- **Modules** are way to make large amount of terraform code modular, portable and sharable.

## Terraform Lock Files
`.terraform.lock.hcl` contain the locked versioning of providers or modules that should be ussed in the project.

remember to always **push** this file to your **(VSC)**

## Terraform State Files

contains information about your curent infrastructure.

this file should not be committed to your **(VSC)**

If you lose this file you lose knowing  the current state of your system

`.terraform.tfstate` is the files caontaining the current state of the system.