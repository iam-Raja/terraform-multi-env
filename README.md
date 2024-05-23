# Terrafrom Multi-Env-Deployment

**Procedure:**

**Dev**
* created resources(Instance & R53 records) for prod & dev env
* For Dev config/values are placed in path:/terraform-multi-env/tfvras/dev
* Intializing :
```
terraform init -backend-config=dev/dev.tf
 ```
* Plan:
```
terraform plan -var-file=dev/dev.tfvars
```
* Apply:
```
terraform apply -var-file=dev/dev.tfvars -auto-approve
```
* Destroy:
```
terraform destroy -var-file=dev/dev.tfvars -auto-approve
```


**Prod**

* For Prod config/values are placed in path:/terraform-multi-env/tfvras/prod

* Intializing :
```
terraform init -backend-config=prod/prod.tf
```
* Plan:
```
terraform plan -var-file=prod/prod.tfvars
```
* Apply:
```
terraform apply -var-file=prod/prod.tfvars -auto-approve
```
* Destroy:
```
terraform destroy -var-file=prod/prod.tfvars -auto-approve
```
