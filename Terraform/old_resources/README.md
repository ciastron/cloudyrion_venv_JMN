# Terraform Info

Terraform works in a way where you have a script (sometimes with multiple modules, which are basically multiple files with scripts) and it creates whole AWS infrastructure for us.
There are three most important command to remember;

- First command allows Terraform to go through your configurations and find any errors within it. This will most likely find errors within the script (missing brackets, not closed speech marks etc) rather than configuration problems. Once you run it, ensure that there are no errors to proceed.
```
terraform plan
```

- Next command runs the actual Terraform script which takes care of creating the environment. This will build the resources within the AWS. Depending on the size of your script, it might take anywhere from couple of seconds to half an hour or more. The errors within the configuration (such as wrong EC2 instance type) will be shown in the end. **Keep in mind that even though some errors might show at the end, the resources without errors were still created and they need to be destroyed if not needed to avoid high AWS fees.**

```
terraform apply
```

- And lastly destroy command which destroys all the resources that were created using terraform apply.
```
terraform destroy
```


TerraGoat also requires you to initalise Terraform within the directory with AWS credentials. So before you run ```terraform plan``` you need to run the following:
```
export TERRAGOAT_STATE_BUCKET="cloudyrion-casestudy-bucket"
export TF_VAR_company_name=cloudyrion
export TF_VAR_environment=cloudyrion-casestudy
export TF_VAR_region="us-west-2"

terraform init -backend-config="bucket=$TERRAGOAT_STATE_BUCKET" -backend-config="key=$TF_VAR_company_name-$TF_VAR_environment.tfstate" -backend-config="region=$TF_VAR_region"
```

Before this is done however, you need to create AWS bucket in the environment so Terraform can store progress and info what has been deployed so later it can delete all the resources. I am not sure which environment you guys are using (whether it is Cloudyrion case study or different one). If its different one, below link gives you a small guide how to create a correct bucket. On the other hand if you are using Cloudyrion one, there is a bucket already created, just make sure to copy its name during the export command. Run all four commands and then you can proceed to create the script. **Ensure your AWS CLI is configured! You can use the command ```aws s3 ls``` to verify everything is working correctly. This will give you list of buckets present in the system**

More on the scripts present here,
- [TerraGoat](https://github.com/bridgecrewio/terragoat): vulnerable Terraform Infrastructure.
