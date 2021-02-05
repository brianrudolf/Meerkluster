# Meerkluster

This project is intended to encompass the steps taken to create a home lab Kubernetes cluster via [k3s](https://k3s.io/) on Raspberry PI(s). 


## Node OS and k3s Binary

Using Packer the OS image can be built in an automated and idempotent fashion. This is preferred to referencing multiple blog posts and assembling a series of steps to follow on each node. This is also an exercise to work with Packer. The build process will be built in a way that this work can be readily used by others without security risks (SSH keys, wireless network credentials, etc.).

The goals and progress of the work will be tracked in the [README](nodes/README.md) within the nodes/ directory.

## Monitoring and Observability 

The following application stacks are targeted to monitor the health of the cluster system and the status of deployed applications. They will provide metrics (Prometheus) and log (Loki) collection, with simplified visualization (Grafana).

- [ ] [kube-prometheus-stack](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack)
- [ ] [loki-stack](https://github.com/grafana/helm-charts/tree/main/charts/loki-stack)

## Supporting Applications

These applications are installed to support the operation of end user applications that are deployed to the cluster.

- [ ] [cert-manager](https://cert-manager.io/docs/installation/kubernetes/)