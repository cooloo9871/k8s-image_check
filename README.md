# This script is used to check which images are currently used by the pod on k8s node.

```
$ git clone https://github.com/cooloo9871/k8s-image_check.git; cd k8s-image_check/
```
## You need to run it on the master
```
$ bash image_check.sh
The images being used on Node:rke2
nginx
registry.rancher.com/rancher/fleet-agent:v0.9.2
registry.rancher.com/rancher/hardened-cluster-autoscaler:v1.8.10-build20240124
registry.rancher.com/rancher/hardened-coredns:v1.11.1-build20240305
registry.rancher.com/rancher/hardened-etcd:v3.5.9-k3s1-build20230802
registry.rancher.com/rancher/hardened-k8s-metrics-server:v0.6.3-build20231009
registry.rancher.com/rancher/hardened-kubernetes:v1.27.12-rke2r1-build20240315
registry.rancher.com/rancher/mirrored-calico-kube-controllers:v3.27.2
registry.rancher.com/rancher/mirrored-calico-node:v3.27.2
registry.rancher.com/rancher/mirrored-calico-operator:v1.32.5
registry.rancher.com/rancher/mirrored-calico-typha:v3.27.2
registry.rancher.com/rancher/mirrored-sig-storage-snapshot-controller:v6.2.1
registry.rancher.com/rancher/mirrored-sig-storage-snapshot-validation-webhook:v6.2.2
registry.rancher.com/rancher/nginx-ingress-controller:nginx-1.9.3-hardened1
registry.rancher.com/rancher/rancher-agent:v2.8.3
registry.rancher.com/rancher/rancher-webhook:v0.4.3
registry.rancher.com/rancher/rke2-cloud-provider:v1.28.2-build20231016
registry.rancher.com/rancher/system-upgrade-controller:v0.13.1

The images being used on Node:rke2-w1
nginx
registry.rancher.com/rancher/fleet-agent:v0.9.2
registry.rancher.com/rancher/hardened-coredns:v1.11.1-build20240305
registry.rancher.com/rancher/hardened-k8s-metrics-server:v0.6.3-build20231009
registry.rancher.com/rancher/hardened-kubernetes:v1.27.12-rke2r1-build20240315
registry.rancher.com/rancher/mirrored-calico-node:v3.27.2
registry.rancher.com/rancher/mirrored-calico-operator:v1.32.5
registry.rancher.com/rancher/mirrored-sig-storage-snapshot-controller:v6.2.1
registry.rancher.com/rancher/mirrored-sig-storage-snapshot-validation-webhook:v6.2.2
registry.rancher.com/rancher/nginx-ingress-controller:nginx-1.9.3-hardened1
registry.rancher.com/rancher/rancher-agent:v2.8.3
registry.rancher.com/rancher/rancher-webhook:v0.4.3
```
