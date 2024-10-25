package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraform(t *testing.T) {
    // Define the terraform options with default retryable errors to ignore
    terraformOptions := &terraform.Options{
        TerraformDir: "../", // Path to your Terraform code

        Vars: map[string]interface{}{
            "aws_region": "us-east-1",
            // Add other variables as needed
        },

        // Variables to pass to our Terraform code using -var options
        Vars: map[string]interface{}{
            "cluster_name": "my-eks-cluster",
        },
    }

    // Clean up resources with 'terraform destroy' at the end of the test
    defer terraform.Destroy(t, terraformOptions)

    // Run 'terraform init' and 'terraform apply'. Fail the test if there are any errors.
    terraform.InitAndApply(t, terraformOptions)

    // Validate your code works as expected
    // Add assertions here to verify your infrastructure
}
