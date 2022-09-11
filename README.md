#### Deployment:

- Deploy VPC.yaml
- Deploy EFS.yaml
- Deploy fargate.yaml
- Validate domain for certificate
- Create CNAME in DNS
- Done

#### Notes:

- Currently these templates will only deploy the application into 1 availability zone. I plan on building a multi AZ solution in the near future.

#### This work was inspired by:

- [LindezaGrey](https://github.com/LindezaGrey/hak5c2)
- [1Strategy](https://github.com/1Strategy/fargate-cloudformation-example/blob/master/fargate.yaml)
- [awslabs](https://github.com/awslabs/aws-cloudformation-templates/blob/master/aws/services/VPC/VPC_With_Managed_NAT_And_Private_Subnet.yaml)

#### Container Build:

- A new container will be made on every push to the master branch as well as every week to ensure the image remains up to date.
