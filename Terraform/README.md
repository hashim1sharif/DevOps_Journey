                What is Terraform?

Terreform is CLI tool written in go that allows you to manage your infrastructure as code.
Infrastructure can be defined as any resource that you or you company uses to read and write its date and resources can be Github repository, virtual machine, DNS record and all of those things are infrastructure.

Infrastructure as code means to codify your infrastructure and what is that mean to codify somthing?
That means to create some sort of classification some sort of standard process by which you can interact with those things.
Terraform allows you to difine a file a blueprint of how you want your infrastructure to look.

            Infrastructure Orchestration

Automates how servers, networks, and systems are created and connected — like building the stage.
(Example tools: Terraform, CloudFormation)

            Configuration Management

Automates how each server is set up and maintained — like tuning the instruments.
(Example tools: Ansible, Puppet, Chef)

![iamge alt](https://github.com/hashim1sharif/DevOps-Journey/blob/88e257d9a3a9f84906303913bd6cdbb3a34a9f97/Screenshot%202025-10-17%20152858.png)

                What is a Terraform State File?

Terraform’s memory of your infrastructure. Without it, Terraform wouldn’t know what it already built.

                Desire state & Current state

Desired state = what you want.
Current state = what you have.
Terraform = the tool that makes them the same.

                What are Terraform Providers?

Terraform providers are like plugins or connectors that let Terraform talk to different platforms (like AWS, Azure, Google Cloud, or even GitHub, Docker, etc.).

![image alt](https://github.com/hashim1sharif/DevOps-Journey/blob/404bf1996f94da7aaca5e143a63bd1df871cb8eb/Terraform/images/Screenshot%202025-10-17%20163602.png)

                Terraform init

Is the first command you run in a new or existing Terraform project. It initializes the working directory that contains your Terraform configuration files (like main.tf, variables.tf, etc.).

                Terraform plan

Is the second major command in the Terraform workflow — it lets you preview what changes Terraform will make to your infrastructure before actually applying them.

                Terraform apply

Is the third key command in the Terraform workflow — it actually executes the changes that terraform plan previewed.

                Terraform destroy

Is the final command in the Terraform lifecycle — it deletes all infrastructure that Terraform created.

![image alt](https://github.com/hashim1sharif/DevOps-Journey/blob/947de0b01204a94e7c038b923267974a2eb5312c/Terraform/images/Screenshot%202025-10-11%20134132.png)

                Local Statefile

Terraform stores the state file (terraform.tfstate) on your local machine. It’s simple to use and best for small or personal projects, but it’s not suitable for teams because it can’t be shared or locked, which risks conflicts and data loss.

                Remote Statefile

Terraform stores the state file in a remote backend (like AWS S3, Azure Blob, or Terraform Cloud). This allows multiple users to share the same state, supports locking, provides better security and backups, and is ideal for team and production environments.

![image alt](https://github.com/hashim1sharif/DevOps-Journey/blob/153fb3cf87d165bf8d812b499afb71031e1a6855/Terraform/images/Screenshot%202025-10-18%20135058.png)
