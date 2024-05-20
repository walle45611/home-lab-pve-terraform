resource "proxmox_vm_qemu" "Windows-VM" {
  name        = "Windows-VM"
  target_node = "pve"
  iso        = "local:iso/Windows.iso"
  boot       = "order=ide2;scsi0;;net0"
  network {
    model   = "virtio"
    bridge  = "vmbr0"
  }
  cores   = 2
  sockets = 1
  memory  = 2048
  scsihw  = "virtio-scsi-pci"
  os_type = "Microsoft Windows 10/2016/2019"
  disk {
    size = "20G"
    type = "scsi"
    storage = "local-lvm"
  }
  agent = 0
}
