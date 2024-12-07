# ansible-dev-setup

*This is currently only supported on Ubuntu*

## Installation
1. Make sure you're updated
```bash
sudo apt update && sudo apt upgrade -y
```

2. Install essential tools
```bash
sudo apt install -y git curl
```

3. Clone the files
```bash
git clone https://github.com/PhDbuilds/ansible-dev-setup.git
```

4. cd into directory
```bash
cd ~/dotfiles
```

5. Install Ansible
```bash
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
```

6. This relies on Bitwarden CLI being installed
```bash
sudo snap install bw
```

7. Login to Bitwarden
```bash
bw login
```

8. Unlock vault and export session
```bash
export BW_SESSION=$(bw unlock --raw)
```
9. Install dotfiles
```bash
ansible-playbook main.yml --ask-become-pass
```

10. Verify git was configured
```bash
git config --get user.name
git config --get user.email
```

