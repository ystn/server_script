#! /bin/bash



# echo "Installing SSH Client"
# apt install openssh-client
echo "Installing SSH Server"
apt install openssh-server

echo "Backup SSH Configuration"
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.original
chmod a-w /etc/ssh/sshd_config.original

# sshd -t -f /etc/ssh/sshd_config