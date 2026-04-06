#!/bin/bash

# Installs Ansible on Oracle Linux 9 using dnf

if [ "$EUID" -ne 0 ]; then
    echo "This script requires sudo or root."
    exit 1
fi

if ! command -v dnf >/dev/null 2>&1; then
    echo "This script uses the dnf package manager. dnf was not found."
    exit 1
fi

echo "This script will install Ansible for Oracle Linux 9 using dnf."
echo "The following will be installed:"
echo "  - ansible-core"
read -p "Continue? (y/n): " answer

if [ "$answer" != "y" ]; then
    echo "Installation cancelled."
    exit 0
fi

if command -v ansible >/dev/null 2>&1; then
    echo "A name conflict occurred. 'ansible' already exists on this system."
    exit 1
fi

dnf makecache -y >/dev/null 2>&1
dnf install -y ansible-core >/dev/null 2>&1

echo "Install is complete."
echo "Run this command to test it:"
echo "ansible --version"
