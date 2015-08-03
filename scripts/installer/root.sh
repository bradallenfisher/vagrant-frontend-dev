#Get Node tools
curl --silent --location https://rpm.nodesource.com/setup | bash -
yum -y install nodejs -y
yum groupinstall 'Development Tools' -y
