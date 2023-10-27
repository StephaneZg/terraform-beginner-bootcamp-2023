#!/usr/bin/env bash

# The alias command to add to .bash_profile
TERRAFORM_ALIAS='alias tf="terraform"'

# Check if the alias already exists in .bash_profile
if ! grep -q "$TERRAFORM_ALIAS" ~/.bash_profile; then
    # Append the alias to .bash_profile
    echo "$TERRAFORM_ALIAS" >> ~/.bash_profile
    echo "Terraform alias added to ~/.bash_profile. You can now use 'tf' as a shortcut for 'terraform'."
else
    echo "Terraform alias already exists in ~/.bash_profile. No changes were made."
fi