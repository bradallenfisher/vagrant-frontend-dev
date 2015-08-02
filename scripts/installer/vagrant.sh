gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm
rvm get head
rvm install ruby
mkdir -p /var/www/html
cd /var/www/html
git clone https://github.com/heyMP/frontend-dev.git
sudo npm install -g bower
sudo npm install -g gulp
sudo npm install -g gulp-hologram
gem install bundler
sudo npm install
cd frontend-dev/
sudo npm install
bower install
bundle install
