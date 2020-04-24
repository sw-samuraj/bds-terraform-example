# OCI Big Data Service Terraform example

An example of creating of the OCI _Big Data Service_ resource.
It's a supporting repository accompanying the article
[Terraforming of OCI Big Data Service]().

## How to

### Provide necessary variables

Copy/rename the `env-var.example` file to `env-vars` and fill
your corresponding authentication values:

```
cp env-vars.example env-vars
```

Source the variables, so they are available for Terraform:

```
. env-vars
```

### Initialize Terraform

```
terraform init
```

This will download the _Terraform OCI Provider_.

### Observe a Terraform plan

```
terraform plan
```

It will check any validation errors and show you to-be-created BDS resource.

### Execute the plan

```
terraform apply -auto-approve
```

## Result

Once the Terraform `apply` command successfully finishes, you can see
a newly created BDS instance in the [UI Console]():

TBD pictures
