# EC2 Instance Deployment Using CentOS 7 AMI with Terraform

This project demonstrates how to deploy an EC2 instance using a CentOS 7 public AMI with Terraform and AWS CLI from an Ubuntu VM.

## Pre-requisites

- Terraform and AWS CLI are already installed on your Ubuntu VM.
- You have an AWS account with appropriate permissions.
- You have an AWS Access Key ID and Secret Access Key for programmatic access.

## Steps to Deploy EC2 Instance

### Step 1: Configure AWS CLI

1. Open a terminal in your Ubuntu VM.
2. Run the following command to configure the AWS CLI with your AWS credentials:

    ```bash
    aws configure
    ```

3. When prompted, enter your AWS Access Key ID, Secret Access Key, default region (e.g., `us-west-2`), and output format (e.g., `json`).

### Step 2: Write the Terraform Configuration File

1. Create a new directory for your Terraform configuration:

2. Inside the directory, create a new Terraform configuration file `main.tf`:

    ```bash
    nano main.tf
    ```

3. Terraform code into the `main.tf` file:

4. Save the file and exit the editor 

### Step 3: Initialize Terraform

1. In your terminal, initialize the Terraform working directory by running:

    ```bash
    terraform init
    ```

   This will download the necessary provider plugins and set up your Terraform environment.

### Step 4: Plan the Deployment

1. Run the `terraform plan` command to see the resources that will be created:

    ```bash
    terraform plan
    ```

2. Review the output to ensure that Terraform will create the correct resources (e.g., EC2 instance)

### Step 5: Apply the Terraform Configuration

1. If the plan looks good, apply the configuration to actually create the resources:

    ```bash
    terraform apply
    ```

2. You will be prompted to confirm the creation of the resources. Type `yes` and press `Enter`.

### Step 6: Access the EC2 Instance

Once the Terraform script has finished running, it will output the ID and  public IP address of your new EC2 instance. 

