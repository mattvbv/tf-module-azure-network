# Run the test

## Init the backend

Create a backend-secret.tfvars containing the following content :
```
storage_account_name = "mystorage"
container_name       = "mystorage-terraform-states"
key                  = "mystorage-platform-tests-tf-module-network.tfstate"
```

and run 
```
terraform init -backend-config="backend-secret.tfvars"
```

## Run

Create a secret.tfvars containing the following content : 
```
subscription_id = "xxx"
```
and run
```
   terraform plan -var-file="secret.tfvars"
```