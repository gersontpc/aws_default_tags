# AWS Module Tags
I'd be glad to provide a comprehensive translation of the README, incorporating the best aspects of both Response A and Response B while addressing their potential shortcomings:

Default Tags

The aws_default_tags module simplifies the organization and management of your AWS resources by automatically adding standard tags to all of them.

Features:

* Predefined set of core tags applied to all resources
* Customizable with additional tags through variables
* Creation of specific tags for diverse deployments (dev, staging, prod)
* Streamlined resource management and financial monitoring (FinOps)

Example usage:

### Include the Module:

```Terraform
module "default_tags" {
  source = "git::https://github.com/gersontpc/aws_default_tags?ref=1.0.0"

  service_name     = var.service_name
  feature_name     = var.feature_name
  owner_email      = var.owner_email
  ...
}
```
### Define Required Variables:

```Terraform
variable "service_name" {}
variable "feature_name" {}
variable "owner_email" {}
variable "tech_owner_email" {}
variable "environment" {}
variable "squad" {}
variable "finops" {}
variable "repo_name" {}
variable "pipeline" {}
variable "tier" {}
variable "sigla" {}
variable "sn" {}
variable "account_id" {}
```

### Optional Custom Tags:

Set custom tags in the additional_tags mapping:

```Terraform
module "default_tags" {
  source = "git::https://github.com/gersontpc/aws_default_tags?ref=1.0.0"

  additional_tags = {
    Key1 = "Value1"
    Key2 = "Value2"
  }

  service_name     = var.service_name
  feature_name     = var.feature_name
  owner_email      = var.owner_email
  ...
}
````

### Tagging Specific Resources:

```Terraform
resource "aws_instance" "bastion_host" {
  Name = "BastionHost"
  ...
  tags = module.default_tags.tags
}
```

### Or tags all Resources:

Apply tags to all provisioned resources using default_tags in the AWS provider:

```Terraform
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = module.default_tags.tags
  }
}
```

### Feedback and Contributions:
Feel free to share improvements or suggestions by creating a pull request or issuing a new issue!


---
The MIT License (MIT)

Copyright (c) 2016 Pagar.me Pagamentos S/A

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
