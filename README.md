<h1 align="center">
   <a href="#"> Terraform Static Website </a>
</h1>

<h2 align="center">
    Static Website provisioning on AWS S3 using Terraform
</h2>

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/diogofiaminghi/terraform-static-website?color=%2304D361">

  <img alt="Repository size" src="https://img.shields.io/github/repo-size/diogofiaminghi/terraform-static-website">

   <a href="https://github.com/diogofiaminghi/terraform-static-website/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/diogofiaminghi/terraform-static-website">
  </a>
    
   <img alt="License" src="https://img.shields.io/badge/license-MIT-brightgreen">
	
   <a href="https://github.com/diogofiaminghi/terraform-static-website/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/diogofiaminghi/terraform-static-website?style=social">
  </a>
</p>


<h4 align="center"> 
	 Status: Finished
</h4>

<p align="center">
 <a href="#description">Description</a> •
 <a href="#pre-requisites">Pre-requisites</a> • 
 <a href="#how-it-works">How it works</a> • 
 <a href="#tech-stack">Tech Stack</a> • 
 <a href="#author">Author</a> • 
 <a href="#license">License</a>

</p>


## Description

This project aims to provision a static website using the AWS S3 service and Terraform as a structure-as-code tool. Project characteristics:
- random bucket name creation
- creation of bucket, ACL, website configuration, bucket policy and two objects (index.html and erro.html)

---

## Pre-requisites

Before you begin, you will need to have the following tools installed on your machine:
[Terraform] (https://www.terraform.io/) and [Git] (https://git-scm.com).
You will need to have a [AWS Account] (https://aws.amazon.com/).
In addition, it is good to have an editor to work with the code like [VSCode] (https://code.visualstudio.com/).

---

## How it works

1 - Clone this repository.

```bash
git clone git@github.com:diogofiaminghi/terraform-static-website.git
```

6 - You must now configure your AWS Access Keys using the bash terminal.

```bash
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXXX
```
```bash
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

7 - Terraform Commands in terraform folder
```bash
terraform init
```

```bash
terraform fmt
```

```bash
terraform validate
```

```bash
terraform plan -out=plan.out
```

```bash
terraform apply plan.out
```

8 - Now, to prove that everything worked, get the 'url' in 'output' and open it in your web browser.


9 - Do not forget to destroy the provisioned structure otherwise you will be able to receive invoices.
```bash
terraform destroy
```

---

## Tech Stack

The following tools were used in the construction of the project:

-   **[AWS](https://aws.amazon.com/?nc1=h_ls)**
-   **[Terraform](https://www.terraform.io/)**
-   **[VSCode](https://code.visualstudio.com/)**
-   **[Git](https://git-scm.com/)**
-   **[GitHub](https://github.com/)**

---

## Author

<a href="https://www.linkedin.com/in/diogofiaminghi/">
 <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/100308537?s=400&u=abd27efe08d079fba2776ad691516666e8339aa5&v=4" width="100px;" alt="Diogo Fiaminghi"/>
	
[![Linkedin Badge](https://img.shields.io/badge/-Diogo_Fiaminghi-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/diogofiaminghi/)](https://www.linkedin.com/in/diogofiaminghi/) 
[![Gmail Badge](https://img.shields.io/badge/-diogofiaminghi@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:diogofiaminghi@gmail.com)](mailto:diogofiaminghi@gmail.com)

---

## License

This project is under the license [MIT](https://github.com/diogofiaminghi/terraform-static-website/blob/6dbdf154314091a8132e7c6d23939715503c0450/LICENSE).

Made with love by Diogo Fiaminghi 👋🏽 [Get in Touch!](Https://www.linkedin.com/in/diogofiaminghi/)

---
