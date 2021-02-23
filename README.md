# Meerkluster

A Kubernetes home server cluster via [k3s](https://k3s.io/) and Raspberry PI(s). 

<img src="images/Meerkat_Loitering.png" width="400">

## Monitoring and Observability 

The following application stacks are targeted to monitor the health of the cluster system and the status of deployed applications. They will provide metrics (Prometheus) and log (Loki) collection, with simplified visualization (Grafana).

- [ ] [kube-prometheus-stack](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack)
- [ ] [loki-stack](https://github.com/grafana/helm-charts/tree/main/charts/loki-stack)

## Supporting Applications

These applications are installed to support the operation of end user applications that are deployed to the cluster.

- [ ] [cert-manager](https://cert-manager.io/docs/installation/kubernetes/)