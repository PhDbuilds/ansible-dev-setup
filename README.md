# ansible-dev-setup

Cross-platform development environment setup using Ansible. Supports Ubuntu, Debian, and macOS.

## Installation

### Prerequisites

**Ubuntu/Debian:**
```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install essential tools
sudo apt install -y git curl software-properties-common

# Install Ansible
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
```

**macOS:**
```bash
# Install Ansible via pip (Homebrew will be installed automatically by the playbook)
pip3 install ansible

# Or install via Homebrew if you already have it
brew install ansible
```

### Setup

1. Clone the repository
```bash
git clone https://github.com/PhDbuilds/ansible-dev-setup.git
cd ansible-dev-setup
```

2. Run the playbook
```bash
ansible-playbook main.yml --ask-become-pass
```

The playbook will:
- Install Git, Neovim, tmux, btop, and Ghostty
- Configure tmux and Neovim with custom settings
- Prompt for Git username and email during setup

## What's Included

- **Git**: Version control with global configuration
- **Neovim**: Modern Vim-based editor with Lua configuration
- **tmux**: Terminal multiplexer with custom configuration
- **btop**: System resource monitor
- **Ghostty**: Fast, cross-platform terminal emulator

