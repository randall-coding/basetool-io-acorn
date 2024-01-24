# Launch your own Basetool server

## Basetool
[Basetool](https://www.basetool.io/) is an open-source internal tool framework, making it easy for your team to handle and view your data securely. It empowers collaboration, helping you focus on advancing your business.

For simplicity, we'll deploy our Basetool server using an acorn image.

## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/basetool-acorn.git`

Next build and run.

`acorn build -t basetool`

`acorn run -n basetool basetool`

Visit your acorn dashboard to see if your deployment was successful.

Click on the basetool deployment, and find the endpoint section on the right side panel.  This is your basetool instance link.

![basetool_acorn_ui](https://github.com/randall-coding/basetool-io-acorn/assets/39175191/33969c77-bda4-479c-b174-bd3edb4466f4)

![basetool_endpoint](https://github.com/randall-coding/basetool-io-acorn/assets/39175191/e4308247-6bd8-4997-b132-4b19b31a59c4)

## Configure Basetool

Visit the URL for your Acorn Basetool. This will lead you to the login page of Basetool.

![basetool_sign_in](https://github.com/randall-coding/basetool-io-acorn/assets/39175191/5bb2473a-2176-4c6f-adba-a47d767dcbeb)

Go to the registration page by clicking on the "Register" link on the page. Complete the form with your email address, password, organization, and other necessary details.

![basetool_new_user](https://github.com/randall-coding/basetool-io-acorn/assets/39175191/47de315e-7f22-47e5-b480-d942b5532490)

Then login from the login page. Upon logging in with your new account, you will arrive at the Basetool dashboard.

![basetool_dashboard_1](https://github.com/randall-coding/basetool-io-acorn/assets/39175191/33d9592a-2b2b-4b53-8686-419954725d41)

To add a datasource from the dashboard, click on the "Add one" link. Then, select your datasource from the list and follow the on-screen instructions.

![basetool_add_datasource](https://github.com/randall-coding/basetool-io-acorn/assets/39175191/4a72f2cc-1f9d-4654-b2cb-fbbec6a0151d)

### SMTP Configuration (Optional)
If you want to configure SMTP, you can set these env values in the Acornfile:
- EMAIL_FROM: **<ExampleMailer <example@example.com>>**
- SMTP_HOST: **<Your SMTP Host>**
- SMTP_PORT: **<SMTP Port>**
- SMTP_USER: **<SMTP User>**
- SMTP_PASSWORD: **<SMTP Password>**

Congratulations! The Basetool installation is now complete.

## Conclusion
That's all there is to it.  We've now got a Basetool server up and running from an acorn image.
For more detailed instructions on working with your Basetool server see the Basetool documentation.

## References
* [Basetool](https://www.basetool.io/)
* [Basetool Documentation](https://docs.basetool.io/basetool/)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
