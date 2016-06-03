#!/bin/bash
# Ubuntu 15.10 server
sudo passwd root
# change password
sudo bash
sudo curl https://raw.githubusercontent.com/scottalanmiller/xenorchestra_installer/master/xo_install.sh | bash
cd /opt/xo-server
# nano package.json
# change @marsaud/smb2-promise from "^0.2.0" to "^0.1.0"
rm -rf node_modules
npm install
npm install -g forever
forever start bin/xo-server
# The default username and password are applied, admin@admin.net and admin for the password