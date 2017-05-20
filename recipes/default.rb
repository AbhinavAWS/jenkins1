yum -y update
 yum -y install java-1.8.0-openjdk-devel.x86_64
 yum -y install wget
 yum -y install git

 yum update –y
 wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkinsci.org/redhat/jenkins.repo
 rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
 yum install jenkins -y
  
 mkdir -p /opt/maven
 cd /opt/maven
 wget http://mirrors.advancedhosters.com/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
 tar xvf apache-maven-3.5.0-bin.tar.gz
 chown -R jenkins:jenkins /opt/maven

service 'jenkins' do
   support status: true, restart: true, reload:true
   action [:enable, :start]
end