# KubeArch
Automating the deployment of kubernetes clusters based on declarative architecture models.

## Architecture
For a detailed description of KubeArch's architecture see https://floble.medium.com/kubearch-towards-a-no-code-low-code-software-for-building-k8s-clusters-based-on-declarative-6ce0a82f7890.

## Usage
To setup an exemplary k8s cluster on AWS clone this repository to your local machine. The following prerequisites must be fulfilled by your local machine:
* Ansible must be installed on your local machine
* Terraform must be installed on your local machine
* AWS CLI must be installed and configured for your AWS account on your local machine

The Terraform modules must be in the following directory relative to the KubeArch CLI: ./factors_of_production/infrastructure/aws.

The Ansible roles must be in the following directory relative to the KubeArch CLI: ./factors_of_production/software.

The YAML file (text.yaml) must be in the same directory as the KubeArch CLI.

It is assumed that the private SSH key required to access the EC2 instances is named `id_rsa_floble` and is stored in `~/.ssh/`. Please change the name of and path to the private ssh key as desired in the YAML file.

To setup the exemplary k8s cluster described by the YAML file perform the following command:

```
./kubearch build -a test.yaml -ssh ~/.ssh/id_rsa_floble
```

In case you renamed the name of the private ssh key or altered its path, please adapt the command above accordingly.
