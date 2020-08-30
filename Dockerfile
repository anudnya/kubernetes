FROM jenkins/jenkins
USER root

RUN wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
RUN apt-get install unzip -y
RUN unzip terraform_0.11.14_linux_amd64.zip && export PATH=$PATH:$HOME/terraform
USER jenkins