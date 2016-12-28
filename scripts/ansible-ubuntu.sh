#!/urs/bin/bash -eux

# ------------
# bash options
# ------------
#
# src: http://www.tldp.org/LDP/abs/html/options.html
#
# -e 	errexit   Abort script at first error, when a command exits with non-zero status (except in until or while loops, if-tests, list constructs)
# -u  nounset   Attempt to use undefined variable outputs error message, and forces an exit
# -x	xtrace    Similar to -v, but expands commands
#

# update packages & upgrade system
sudo apt-get update -y
sudo apt-get upgrade -y

# install software-properties-common package to get apt-add-repository command
apt-get -y install software-properties-common

# Add ansible repository
sudo apt-add-repository -y ppa:ansible/ansible

# install ansible
sudo apt-get update -y
sudo apt-get install -y ansible
