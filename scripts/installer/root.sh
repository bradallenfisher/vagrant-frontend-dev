#Get Node tools
curl --silent --location https://rpm.nodesource.com/setup | bash -
yum -y install nodejs -y
yum groupinstall 'Development Tools'
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
sudo npm install -g browsersync
