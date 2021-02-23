# Node Preparation

The nodes can be configured to run Kubernetes via Ansible, as the k3s team has an Ansible [playbook](https://github.com/k3s-io/k3s-ansible). This project will use Ubuntu Server 20.04.2, which at the time of writing requires a few changes to the [boot configuration](https://www.raspberrypi.org/forums/viewtopic.php?t=278791).


# Node Setup

The following features are required for each node.

- [x] Passwordless SSH access
- [x] Set the hostname 
- [x] Configure local wireless network access
- [ ] Install k3s using Ansible and retrieve the kubeconfig file

## Steps

Upon first boot, I found the new device on my network using `nmap -sn 192.168.0.0/24` as 192.168.0.X is my local network address range. 

### From workstation:

`ssh-copy-id ubuntu@192.168.0.72`
`scp nodes/config/network-config.yaml ubuntu@192.168.0.72:~/etc/netplan`

### While logged into PI:

Upgrade installed packages.
`sudo apt-get update`
`sudo apt-get upgrade`

Set hostname.
`sudo hostnamectl set-hostname meerkat-one`

Configure wireless network.
`sudo netplan generate`
`sudo netplan apply`


# References and Debug

[Ubuntu on Raspberry PI](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#1-overview)

[netplan](https://netplan.io/reference/#properties-for-device-type-wifis%3A)


