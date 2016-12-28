#!/bin/bash -eux

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

# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" > /etc/sudoers.d/vagrant
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
