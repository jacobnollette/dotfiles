#cd ~;
#wget https://dl.eff.org/certbot-auto;
#chmod a+x certbot-auto;

sudo add-apt-repository ppa:certbot/certbot;
sudo apt-get update;
sudo apt-get install -y python-certbot-nginx;

