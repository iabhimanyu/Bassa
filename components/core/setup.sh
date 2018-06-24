#!/bin/bash

echo "Installing pip"
sudo apt-get install -y python3-pip
echo "pip installed"

echo "Installing setuptools"
sudo apt-get install -y python3-setuptools
echo "pip installed"

echo "Installing Aria2"
sudo apt-get install -y aria2
echo "Aria2 installed"

echo "Installing mysql-server"
sudo apt-get install -y mysql-server
echo "mysql-server installed"

echo "Installing libmysqlclient"
sudo apt-get install libmysqlclient-dev
echo "libmysqlclient installed"

# save the directory for further uses
pwd > main_directory.txt

echo "Adding path to bashrc file"
main_file="main_directory.txt"
main_directory=""
while IFS= read line
do
	echo "$line"
	main_directory=$line
done <"$main_file"
rm -rf main_directory.txt
echo "export PATH=\"$main_directory:$""PATH\"" | sudo tee -a ~/.bashrc > /dev/null
source ~/.bashrc