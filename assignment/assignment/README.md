# terraform

#Terraform with AWS Project:

Installation:

*Install the required software such as aws cli , python , pip and terraform cli on windows/linux/ mac anyone.

*Create a ssh key pair with name arjun-key or any other name but hten change in the terraform file.

* configure your localhost with aws credentials in us-east-1 region. Run aws configure command and then give secret key, access key and other details like region on your localhost.

* Run terraform init ---> terraform plan ----> terraform apply command one by one on your localhost. In last, it will ask yes give it yes. Run it from the same file where terraform files are present.

* For destroy run the terraform destory from the same path where your terraform files are present.

##############################################################################Questions##########################################################################################

Q1) How would you make this deployment fault tolerant and highly available?

Ans 1) Deploy the Infrastructure with backend and frontend instances in multiple available zones . Place the instances in autoscaling group which will make it maintain desired instance always to make fault tolerant and high avaialble.We can include elastic load balancers also to route traffic.

Q 1) How would you make this deployment more secure? 

Ans 2) We can maintain security from security group level to allow only specific IP address and ports. We can create everything in private subnet except bastion host. We can include api gateway or load balancers to use with web applciation firewall.

Q 3) How would you make this deployment cloud agnostic?

We are using single configuaration here in terraform which itself is cloud agnostic solution.


