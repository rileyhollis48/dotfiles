#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "This script requires sudo or root."
    exit 1
fi

if ! command -v apt >/dev/null 2>&1; then
    echo "This script uses the apt package manager. apt was not found."
    exit 1
fi

echo "This script will install Ansible using the apt package manager."
echo "The following will be installed:"
echo "  - software-properties-common"
echo "  - ansible"
read -p "Continue? (y/n): " answer

if [ "$answer" != "y" ]; then
    echo "Installation cancelled."
    exit 0
fi

if command -v ansible >/dev/null 2>&1; then
    echo "A name conflict occurred. 'ansible' already exists on this system."
    exit 1
fi

apt update >/dev/null 2>&1
apt install -y software-properties-common >/dev/null 2>&1
add-apt-repository --yes --update ppa:ansible/ansible >/dev/null 2>&1
apt install -y ansible >/dev/null 2>&1

echo "Install is complete."
echo "Run this command to test it:"
echo "ansible --version"
