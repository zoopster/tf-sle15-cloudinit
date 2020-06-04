This set of terraform files will setup one or more SLE15 instances using the LIBVIRT provider and potentially register them in SCC (with a valid registration code)

Ensure you have the LIBVIRT provider installed see - https://github.com/dmacvicar/terraform-provider-libvirt

To use these files:
1) Download the latest Openstack qcow image
2) Copy the terraform.tfvars.example to terraform.tfvars
3) Modify the terraform.tfvars with the correct image name, stack name, ip range corresponding to your LIBVIRT network, and ssh key.
4) You can also add a variable for the registration code if you wish to automatically register with SCC.
