# Project AWS & Terraform: Design, Provision, and Monitor AWS Infrastructure at Scale
Project Instructions
Exercise 1

    Download the starter code.
    In the main.tf file write the code to provision
        AWS as the cloud provider
        Use an existing VPC ID
        Use an existing public subnet
        4 AWS t2.micro EC2 instances named Udacity T2
        2 m4.large EC2 instances named Udacity M4
    Run Terraform.
    Take a screenshot of the 6 EC2 instances in the AWS console and save it as Terraform_1_1.
    Use Terraform to delete the 2 m4.large instances
    Take an updated screenshot of the AWS console showing only the 4 t2.micro instances and save it as Terraform_1_2

Exercise 2

    In the Exercise_2 folder, write the code to deploy an AWS Lambda Function using Terraform. Your code should include:
        A lambda.py file
        A main.tf file with AWS as the provider, and IAM role for Lambda, a VPC, and a public subnet
        An outputs.tf file
        A variables.tf file with an AWS region

    Take a screenshot of the EC2 instances page

    Take a screenshot of the VPC page

Project Files

    Udacity_Diagram_1.pdf: You have been asked to plan and provision a cost-effective AWS infrastructure for a new social media application development project for 50,000 single-region users. The project requires the following AWS infrastructure and services
    
    Infrastructure in the following regions: us-east-1
    Users and Client machines
    One VPC
    Two Availability Zones
    Four Subnets (2 Public, 2 Private)
    A NAT Gateway
    A CloudFront distribution with an S3 bucket
    Web servers in the Public Subnets sized according to your usage estimates
    Application Servers in the Private Subnets sized according to your usage estimates
    DB Servers in the Private Subnets
    Web Servers Load Balanced and Autoscaled
    Application Servers Load Balanced and Autoscaled
    A Master DB in AZ1 with a read replica in AZ2
    
    Udacity_Diagram_2.pdf: Contains a SERVERLESS architecture schematic for a new application development project.
        
    A user and client machine
    AWS Route 53
    A CloudFront Distribution
    AWS Cognito
    AWS Lambda
    API Gateway
    DynamoDB
    S3 Storage
    
List of estimates & how much it will cost to run the services in our Part 1 diagram for one month:

    Initial_Cost_Estimate.csv: Cost estimated using AWS Pricing Calculator for the architecture to run in AWS created in Udacity_Diagram_1.pdf.
    Targeted a monthly estimate between $8,000-$10,000.
    
    Reduced_Cost_Estimate.csv: Cost estimated using AWS Pricing Calculator for the architecture to run in AWS created in Udacity_Diagram_1.pdf.
    Targeted a monthly estimate to a maximum of $6,500.
    
    Increased_Cost Estimate.csv: Cost estimated using AWS Pricing Calculator for the architecture to run in AWS created in Udacity_Diagram_1.pdf.
    Targeted a monthly estimate to a maximum of $20,000.

List of changes & reasoning/proposition behind/for our desicion:

    Change: Scaling down our EC2 instance configuration settings(i.e t2.xlarge -> t2.large)
     Our instances can be auto scaled if need be and we shouldn't suffer too much of a performance issue especially not in the long run.
    Change: Changed pricing from on-demand to reserved instances.
    Reserving instances for 1 year will reduce architecture cost. We will be locked in that plan for 1 or 3 years, whichever we choose. More resources can be added any time if need be.
    Change: Scaling down our RDS instance configuration(i.e db.m5.4xlarge to db.m5.2xlarge)
    Here is where we had to make a tough decision for our budget. We will suffer a slight performance issues, but our for our needs, this database is affordable and will prove dependable. We should see a slight saving in our cost.

Estimated cost for our $20,000 budget:

List of changes & reasoning/proposition behind/for our desicion:

    Change: Added more EC2 instances and adjust our load balancer to reflect that.
    Higher availability/uptime for our application means happy users. If US-east-1 region is completely down, application will be up and running in US-east-2 region.
    Change: Added another RDS database instance in the Ohio region.
    Reducing the latency/performance issue for our users accessing application in different region. Our data can be fetched from the Ohio region read replica database.
    Change: Scaled up our RDS database instances.
    Our reasoning is that this will improve the database performance and will be more effective in dealing with a larger traffic increase on our application platform.
