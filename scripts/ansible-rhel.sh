#!/urs/bin/bash -eux

# ------------
# bash options
# ------------
#
# src: http://www.tldp.org/LDP/abs/html/options.html
#
# -e 	errexit   Abort script at first error, when a command exits with non-zero status (except in until or while loops, if-tests, list constructs)
# -u    nounset   Attempt to use undefined variable outputs error message, and forces an exit
# -x	xtrace    Similar to -v, but expands commands
#

# source redhat-credentials.sh script to get Red Hat credentials
source /tmp/redhat-credentials.sh

# register to get Red Hat packages
subscription-manager register --username="${RHSM_USERNAME}" --password="${RHSM_PASSWORD}" --auto-attach

# enable ansible 2.9 repository
subscription-manager repos --enable ansible-2.9-for-rhel-8-x86_64-rpms

# install ansible
yum install -y ansible
