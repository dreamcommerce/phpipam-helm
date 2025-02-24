[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/phpipam-helm)](https://artifacthub.io/packages/search?repo=phpipam-helm)

# Phpipam For Kubernetes

## Contributing

Feel free to contribute.

Please use [helm-docs](https://github.com/norwoodj/helm-docs) for generating the charts README.md

## Before you begin

### Prerequisites

- Kubernetes 1.23+
- Helm 3.8.0+

### Install Helm

Helm is a tool for managing Kubernetes charts. Charts are packages of pre-configured Kubernetes resources.

To install Helm, refer to the [Helm install guide](https://github.com/helm/helm#install) and ensure that the `helm` binary is in the `PATH` of your shell.

### Using Helm

Once you have installed the Helm client, you can deploy a Bitnami Helm Chart into a Kubernetes cluster.

Please refer to the [Quick Start guide](https://helm.sh/docs/intro/quickstart/) if you wish to get running in just a few commands, otherwise, the [Using Helm Guide](https://helm.sh/docs/intro/using_helm/) provides detailed instructions on how to use the Helm client to manage packages on your Kubernetes cluster.

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

    helm repo add digitalhub https://ryjogo.github.io/digitalhub

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo digitalhub` to see the charts.

To install the phpipam chart:

    helm install my-phpipam digitalhub/phpipam

To uninstall the chart:

    helm delete my-phpipam
