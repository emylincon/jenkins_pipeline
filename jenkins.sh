#! /bin/bash
yum update -y
wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
yum install -y apache-maven
amazon-linux-extras install epel -y
yum install java-1.8.0-devel -y
yum install git -y
yum update –y
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade -y
yum install jenkins java-1.8.0-openjdk-devel -y
yum install docker -y
usermod -aG docker jenkins
usermod -aG docker ec2-user
systemctl stop docker
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
systemctl daemon-reload
systemctl start jenkins
dockerd --experimental &