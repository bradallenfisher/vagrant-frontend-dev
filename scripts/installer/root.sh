#Get Node tools
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -Uvh epel-release-6*.rpm
yum -y install nodejs -y
yum groupinstall 'Development Tools' -y
