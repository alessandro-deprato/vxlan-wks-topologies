# Cisco EMEA Datacenter and Provider Connectivity Business Unit - Build a VXLAN BGP EVPN fabric from scratch

## Getting Started
This repository contains VXLAN BGP EVPN CML Topologies to be used with NDFC.

### Prerequisites
- Download the repository files
- Install Terraform - Minimum version is 1.3
- Fill the provider.auto.tfvars file with your environment management details

* Init

```zsh
 terraform init
```

* Plan

```zsh
 terraform plan
```

* Apply

```zsh
 terraform apply
```


* When you are done - Destroy

```
 terraform destroy
```

### Caveats
Bringing the entire full topology takes around 45-50Ghz of CPU cycles. After 10 minutes the CPU will normalize around 10Ghz
If you do not have enough CPU cycles availabe consider using the light topology or uncomment the '#state = "DEFINED_ON_CORE' line in the provider.auto.tfvars. This will load the topology but leave all the nodes shutdown. Power on a couple of them per time.

```yaml
   state = "DEFINED_ON_CORE"
```

It is extremely important to not saturate CPU. Doing so will prevent the nodes to boot up correctly.
