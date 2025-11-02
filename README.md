# terraform-azurerm-vm

List account subscriptions:
```bash
az account list -o table
```

Update subscription_id in terraform.tfvars file:
```bash
cat > terraform.tfvars << EOF
subscription_id = $(az account list --query "[0].id")
EOF
```

---

Initalize Terraform:
```bash
terraform init -upgrade
```

Create a instance:
```bash
terraform apply -auto-approve
```

SSH into the VM:
```bash
ssh azureuser@$(terraform output -raw public_ip)
```

Destroy the instance:
```bash
terraform destroy -auto-approve
```
