# Terraform for cloudrun

## List of Terraform Variables  

- project_id (**required**)
- image_path (**optional** - default set to ***us-docker.pkg.dev/cloudrun/container/hello***)
- cloudrun_service_name (**optional** - default set to ***cloudrun-srv***)
- region (**optional** - default set to ***us-central1***)
- service account (**required**)

## Sample terraform commands for deployment

> `terraform init`

> `terraform plan -var="project_id=sampleprojectid" -var="image_path=sampleimagepath"-var="cloudrun_service_name=samplecloudrunservice -var="region=us-east1" -var="service_account=sampleserviceaccountname"`

> `terraform apply -var="project_id=sampleprojectid" -var="image_path=sampleimagepath"-var="cloudrun_service_name=samplecloudrunservice -var="region=us-east1" -var="service_account=sampleserviceaccountname" -auto-approve`

> `terraform destroy -var="project_id=sampleprojectid" -var="image_path=sampleimagepath"-var="cloudrun_service_name=samplecloudrunservice -var="region=us-east1" -var="service_account=sampleserviceaccountname" -auto-approve`