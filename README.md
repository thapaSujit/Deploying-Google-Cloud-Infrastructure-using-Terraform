# Terraform Google Cloud Infrastructure Deployment

This repository contains Terraform code to deploy resources on Google Cloud Platform (GCP). The infrastructure includes the setup of a network, firewall rules, and instances in different zones.

## Files

1. **provider.tf**
   - Configuration file specifying the Google Cloud provider.

2. **main.tf**
   - Terraform script defining a Google Compute Engine instance, specifying its name, zone, machine type, boot disk image, and network configuration.

3. **variables.tf**
   - Variable definitions for customization, including instance name, zone, type, and network.

4. **firewall.tf**
   - Terraform script defining a firewall rule allowing HTTP, SSH, RDP, and ICMP traffic.

## Module

- **instance/**
  - Module directory containing configuration for creating instances. This module is reused for creating instances in different zones.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/terraform-gcp-infrastructure.git
   cd terraform-gcp-infrastructure
   ```

2. Initialize terraform
    ```bash
    terraform init
    ```

3. Run Terraform Plan
    ```bash
    terraform plan
    ```

4. Deploy infra
    ```bash
    terraform apply
    ```

5. Clean up reasources
    ```bash
    terraform destroy
    ```
