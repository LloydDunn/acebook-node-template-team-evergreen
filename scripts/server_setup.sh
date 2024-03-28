cd /var/www/myapp
source ~/.bash_profile
nvm install 16
sudo chown -R $USER /var/www/myapp
npm install
npm install pm2 -g