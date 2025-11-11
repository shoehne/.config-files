# Directories

| Path | |
| --- | --- |
| `/var/lib/vz/template/iso` | default ISO image storage |
| `/var/lib/vz/template/cache` | default LXC template storage |
| `/etc/pve/firewall/cluster.fw` | Firewall config file for the cluster |
| `/etc/pve/nodes/nodes/${node_name}/host.fw` | Firewall config file for node ${nodename} |

# SSH/SCP

| Command | |
| --- | --- |
| `scp ${path_to_iso_} ${ssh_connection}:/var/lib/vz/template/iso/` | |

# VM Management
Console Access

| Command              | Description                                       | Notes                            |
| -------------------- | ------------------------------------------------- | -------------------------------- |
| `qm terminal <VMID>` | Connect via serial console (SSH-friendly)         | Only works if serial0 is defined |
| `qm monitor <VMID>`  | Connect to QEMU monitor (VNC / advanced commands) | Advanced VM control              |

`qm create`

| Option                             | Description                            | Possible Values / Notes                                                                                      |                     |
| ---------------------------------- | -------------------------------------- | ------------------------------------------------------------------------------------------------------------ | ------------------- |
| `<VMID>`                           | Numeric ID for the VM. Must be unique. | Any integer between 100–999999 (depends on cluster config)                                                   |                     |
| `--name <VM_NAME>`                 | Name of the VM                         | Any string (alphanumeric, spaces allowed but avoid special chars)                                            |                     |
| `--memory <MB>`                    | RAM allocation in megabytes            | Integer (e.g., 4096 for 4GB)                                                                                 |                     |
| `--cores <NUM>`                    | Number of CPU cores assigned           | Integer (1–number of host cores)                                                                             |                     |
| `--cpu <cpu_type>`                 | CPU model for the VM                   | Common values: `host` (match host CPU), `kvm64`, `qemu64`, `host-passthrough`, `EPYC`, `Skylake-Server` etc. |                     |
| `--net<N> <MODEL>,bridge=<BRIDGE>` | Network interface                      | `<N>` = 0–15, `<MODEL>` = `virtio`, `e1000`, `rtl8139`, `vmxnet3`, `<BRIDGE>` = e.g., `vmbr0`, `vmbr1`       |                     |
| `--onboot 1`                        | 0`                                     | Start VM automatically at host boot                                                                          | `1` = yes, `0` = no |

`qm set`

| Option | Description | Possible Values | Notes |
| --- | --- | --- | --- |
| `<VMID>` | Numeric ID for the VM. Must be unique | | |
| `--ide2 local:

`qm list`, `pct list`
List all VM's and LXC's respectively

`qm start` / `qm stop` / `qm reset` / `qm shutdown`

| Command              | Description                           | Notes                                |
| -------------------- | ------------------------------------- | ------------------------------------ |
| `qm start <VMID>`    | Power on the VM                       | –                                    |
| `qm stop <VMID>`     | Force a shutdown (like pulling power) | Can cause data loss if OS is running |
| `qm shutdown <VMID>` | Sends ACPI shutdown signal to guest   | Guest must support ACPI shutdown     |
| `qm reset <VMID>`    | Hard reboot (power cycle)             | Equivalent to pressing reset button  |
| `qm suspend <VMID>`  | Suspend VM to RAM/disk                | Uses VM memory, must be supported    |
| `qm resume <VMID>`   | Resume a suspended VM                 | –                                    |

`qm destroy`

| Option   | Description            | Notes                                                              |
| -------- | ---------------------- | ------------------------------------------------------------------ |
| `<VMID>` | ID of the VM to delete | Deletes VM config and optionally its disks (check storage cleanup) |

`qm importdisk`

| Option                    | Description                          | Values                                  |
| ------------------------- | ------------------------------------ | --------------------------------------- |
| `<VMID>`                  | Target VM ID                         | –                                       |
| `<DISK_IMG>`              | Path to raw/qcow2 image              | Local path on Proxmox host              |
| `<STORAGE>`               | Storage ID in Proxmox                | e.g., `local-lvm`, `local`, `ceph`      |
| `--scsi0 <STORAGE>:vm-<VMID>-disk-0`|  | Use same SCSI controller type as before |

Storage Options (`--scsi`, `ide` etc.)

| Option                | Description                 | Possible Values / Notes                                                                                   |      |
| --------------------- | --------------------------- | --------------------------------------------------------------------------------------------------------- | ---- |
| `--scsi<N>`           | Add a SCSI disk             | `<N>` = 0–15, value format: `<STORAGE>:<SIZE>` e.g., `local-lvm:32` (size in GB), optional `,format=qcow2 | raw` |
| `--delete <DEVICE>`   | Remove a disk or interface  | `<DEVICE>` = `scsi0`, `ide0`, `net0`, etc.                                                                |      |
| `--scsihw <TYPE>`     | SCSI controller type        | Values: `virtio-scsi-pci`, `lsi`, `megasas`, `buslogic`, `virtio-scsi-single`                             |      |

Boot / CD-ROM / ISO Options

| Option | Description | Possible Values | Notes
| --- | --- | --- | --- |
| `--cd-rom <storage>:iso/<iso_file>` | Attach ISO image as CD/DVD drive | | |
| `--ide<N> <storage>:iso/<iso_file>,media=cd-rom`            | Add IDE disk or CD-ROM      | `<N>` = 0–3; `<storage>`                                        |      |
| `--bootdisk <DEVICE>` | Set which disk to boot from | `<DEVICE>` = `scsi0`, `ide0`, etc.                                                                        |      |
| `--boot order=<device>` | Set the boot order | Semicolon list of devices | |

Network devices (`net`)

| Option       | Description             | Possible Values / Notes                                   |
| ------------ | ----------------------- | --------------------------------------------------------- |
| `<N>`        | Interface number        | 0–15                                                      |
| `--net<N>`   | Add a network interface | Format: `<MODEL>,bridge=<BRIDGE>[,firewall=1,tag=<VLAN>]` |
| `<MODEL>`    | NIC emulation           | `virtio`, `e1000`, `rtl8139`, `vmxnet3`                   |
| `<BRIDGE>`   | Bridge on Proxmox host  | e.g., `vmbr0`, `vmbr1`                                    |
| `firewall=1`  | Enable Proxmox firewall for this interface | `1` = enabled, `0` = disabled |
| `tag=<VLAN>` | VLAN tag                | Integer 2–4094                                            |

Serial Port (`--serial`)

| Option             | Description             | Values                                                                                                         |
| ------------------ | ----------------------- | -------------------------------------------------------------------------------------------------------------- |
| `--serial0 <MODE>` | Add serial port         | `socket` = exposed via `qm terminal`<br>`pty` = pseudo-terminal<br>`file=/path/to/file` = write output to file |
| `--vga <TYPE>`     | Set console output type | `std` = VGA, `cirrus`, `vmware`, `serial0` = serial-only output                                                |

BIOS and Machine type

| Option             | Description     | Values                                                       |
| ------------------ | --------------- | ------------------------------------------------------------ |
| `--bios <TYPE>`    | Firmware type   | `bios` = legacy BIOS, `ovmf` = UEFI                          |
| `--machine <TYPE>` | VM machine type | `pc-i440fx-7.2`, `q35`, `q35-6.2`, etc. (QEMU machine types) |

# Firewall


