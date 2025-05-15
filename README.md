# Beginner-Terraform-Managed-Infrastructure-AWS-EC2
 
# Terraform-AWS-EC2

This repository contains Terraform configurations to provision a single Linux server on AWS with necessary permissions.

## Prerequisites
- Terraform installed (`>=1.10.2`)
- AWS CLI configured with proper credentials
- An existing SSH key pair in AWS

## Project Structure
```
terraform-linux-server/
│── main.tf           # Defines EC2 instance and security group
│── variables.tf      # Input variables
│── outputs.tf        # Outputs like public IP
│── .gitignore        # Prevents sensitive files from being committed
│── README.md         # Documentation
```

## Usage
1. **Clone the repository:**
   ```sh
   git clone <your-repo-url>
   cd terraform-linux-server
   ```

2. **Initialize Terraform:**
   ```sh
   terraform init
   ```

3. **Apply the configuration:**
   ```sh
   terraform apply -auto-approve
   ```

4. **Retrieve the instance details:**
   ```sh
   terraform output
   ```

## Cleanup
To destroy the infrastructure:
```sh
terraform destroy -auto-approve
```

## Security Considerations
- Ensure `terraform.tfstate` is not committed.
- Use IAM roles instead of storing credentials.
- Restrict SSH access to specific IPs instead of `0.0.0.0/0`.

## License
This project is open-source under the MIT License and licenses.
