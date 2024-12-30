# 🚀 AWS Bastion Architecture using Terraform

Welcome to `aws-bastion-architecture`! This project helps you deploy a secure **Bastion Host architecture** on AWS using **Terraform** for infrastructure as code. It's simple, secure, and scalable, just what you need to control access to your private AWS resources.  
This repository complements the Medium article I wrote: [Bastion Architecture on AWS using Terraform](https://medium.com/p/c49c9e5314b1).

---

## 🎯 What’s Inside?  

- **Terraform**: Automates the creation of a Bastion host in a VPC with public and private subnets and instances.  
- A repeatable and tested workflow for AWS deployments.  

---

## ⚙️ Prerequisites  

Before you dive in, make sure you have the following ready:  

- **[Terraform](https://developer.hashicorp.com/terraform/docs)**: The powerhouse for creating and managing cloud resources.
- **[AWS CLI](https://aws.amazon.com/cli/)** *(optional)*: Handy for debugging and manual checks.  
- **AWS Account**: Don’t forget this one!  
- **Basic Knowledge**: Familiarity with AWS, VPCs, SSH, and DevOps tools is a plus.

---

## 🚀 Quickstart  

1. **Clone the repo**:  

   ```bash
   git clone https://github.com/yourusername/aws-bastion-architecture.git  
   cd aws-bastion-architecture
   ```

2. **Set up Terraform**:  
   - Initialize Terraform:  

     ```bash
     terraform init
     ```  

   - Review and apply the plan:  

     ```bash
     terraform apply
     ```  

   *(Don’t forget to review the output carefully before typing `yes`!)*  

3. **Celebrate** 🎉: You’ve just deployed and tested your Bastion architecture!  

---

## 🛠 Tools in Action  

### Terraform  

Terraform is our trusted builder. It defines and deploys the infrastructure (VPCs, subnets, security groups, EC2 instances) as reusable code. No clicking around the AWS console—just pure automation.  

### AWS CLI *(Optional)*  

Want to peek under the hood? Use the AWS CLI to verify resources or manually troubleshoot issues.  

---

## 📚 Documentation & References  

- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)  
- [AWS CLI Docs](https://aws.amazon.com/cli/)  
- [AWS Bastion Hosts](https://docs.aws.amazon.com/architecture/security-and-compliance/architecture-bastion.html)  

---

## 🌟 Contribute  

Found a bug or have a cool idea? Contributions are welcome! Open an issue or submit a pull request.

---

## 🧑‍💻 Author  

Crafted with ❤️ by [Rafik Bahri](https://github.com/rafikbahri).  

Enjoy building secure, scalable AWS architectures! 🚀  
