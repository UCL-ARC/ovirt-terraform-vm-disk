# ovirt-terraform-vm-disk

Create and attach disks to oVirt VMs with Terraform.

## Usage

```hcl
module "testdisk" {
  source            = "github.com/UCL-ARC/ovirt-terraform-vm-disk//?ref=v0.1.0"
  
  # Human-readable alias for the disk.
  name              = "testvm_disk02"
  # Disk size in GB.
  size              = "5"
  # ID of the target storage domain.
  storage_domain_id = "<MY_STORAGE_DOMAIN_ID>"
  # ID of the VM to attach the disk to.
  vm_id             = module.myvm[0].id
}
```
This module can be used to attach multiple disks to a VM if desired.

## References
- [https://computingforgeeks.com/how-to-provision-vms-on-ovirt-rhev-with-terraform/](https://computingforgeeks.com/how-to-provision-vms-on-ovirt-rhev-with-terraform/)
