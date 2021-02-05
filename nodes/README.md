# Node Preparation

The focus of this subsection to the Meerkluster project is to organize the work to create an OS image for use by the Raspberry PI devices in the cluster. This is handled primarily by [Packer](https://www.packer.io/) using the [packer-build-arm](https://github.com/mkaczanowski/packer-builder-arm) plugin. 

## Base Image

We'll be using Ubuntu Server 20.04 for a few simple reasons.
- The developer's familiarity with Ubuntu 
- The popularity and support of Ubuntu on Raspberry PI
- The popularity of Ubuntu as a node image in Kubernetes clusters

Popularity is considered useful due to the level of support on places like stack overflow and for common use cases in the Kubernetes ecosystem. 


## Feature Progress

The following features are desired as steps taken during the Packer build process.

- [ ] Copy over SSH key and disable password authentication
- [ ] Install log2ram to extend SD card life
- [ ] Set the hostname by Packer variable 
- [ ] Configure local wireless network access (sensitive data)


## References and Debug

netplan
	https://netplan.io/reference/#properties-for-device-type-wifis%3A
	let's learn a bit and verify (I wish TAB would be a set amount of spaces)
	`sudo netplan --debug apply`
	confirm with `ip a` (compare against the laptop's output if this is a new command)

https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#1-overview

