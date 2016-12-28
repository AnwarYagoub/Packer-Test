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

# Remove Ansible and its dependencies.
yum -y remove ansible

# Zero out the rest of the free space using dd, then delete the written file.
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Add `sync` so Packer doesn't quit too early, before the large file is deleted.
sync
