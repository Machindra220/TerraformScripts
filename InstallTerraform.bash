#!/bin/bash
# Run me with superuser privileges
sudo useradd -s /bin/bash -d /home/ashok/ -m -G root YourUserName
echo 'YourUserName  ALL=(ALL:ALL) ALL' >> /etc/sudoers
cd /home/YourUserName/
wget https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_amd64.zip
unzip terraform_0.15.4_linux_amd64.zip
mkdir downloads
mv terraform downloads/

----------Above code can be run to install terraform on your linux system -----------------------------------
---------------------------------  add terraform permanent path in bash_profile file in linux ----------------
Add following line to profile file to work terraform from anywhere 
export PATH="$PATH:~/downloads"

Now run following command 
source ~/.bash_profile
