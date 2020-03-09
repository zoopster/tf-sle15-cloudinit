# URL of the image to use
# EXAMPLE:
# image_uri = "SLE-15-SP1-JeOS-GMC"
image_uri = "/home/tux/Downloads/SLES15-SP1-JeOS.x86_64-15.1-OpenStack-Cloud-QU1.qcow2"

# Identifier to make all your resources unique and avoid clashes with other users of this terraform project
stack_name = "jpk8s-"

# CIDR of the network
network_cidr = "192.168.100.0/24"

# Name of DNS domain
dns_domain = "caasp.local"

# Username for the cluster nodes
# EXAMPLE:
username = "sles"

# Password for the cluster nodes
# EXAMPLE:
password = "linux"

# define the repositories to use
# EXAMPLE:
# repositories = {
#   repository1 = "http://example.my.repo.com/repository1/"
#   repository2 = "http://example.my.repo.com/repository2/"
# }

# Minimum required packages. Do not remove them.
# Feel free to add more packages
packages = [
  "kernel-default",
  "-kernel-default-base"
]

# ssh keys to inject into all the nodes
# EXAMPLE:
# authorized_keys = [
#  "ssh-rsa <key-content>"
# ]
authorized_keys = [
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5MUQbCZDBCfYa3pEAYflg+CqyW51gfV1TJcbkhO8ENLKO9BR2K8u2EV642aVCHwViWaQUVvUmIEgOwtQ/sediCqCyV3mBL3/03ReZhtTd3STnm+tT9AWx4LGEn/mgKvs3/OYg7D4YrSIOeUyJ9LPgGYrzxKtfqmnyzwvk3zZJfRTcsPmnm/j8qxy/FUL4T/z0MkGJyo7C+htlZklxpEm7ly/Lpgd/1GCQzTFgFZNIWbMyoEUTwt94cHYZavc5EHg+KIc/SJTrr7UlgD7Y0zr6PFIhFbAs+kvoHAc8ZoUt5O/IcN3SRIBTCAPEQhw7Ima8LoDxeqHlErwcvh3N1ExP tux@linux-agk1"
]

# IMPORTANT: Replace these ntp servers with ones from your infrastructure
ntp_servers = ["0.novell.pool.ntp.org", "1.novell.pool.ntp.org", "2.novell.pool.ntp.org", "3.novell.pool.ntp.org"]
