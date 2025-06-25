
 bash 
 
 #!/bin/bash
 set -e
#!/bin/bash

set -e

echo "Updating system..."
sudo apt update -y
sudo apt upgrade -y

echo "Installing Java..."
sudo apt install openjdk-17-jdk -y

echo "Installing Jenkins..."
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "Creating SSH Key..."
ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f ~/.ssh/id_rsa -N ""

echo "Done!"
 
   
   
   
   