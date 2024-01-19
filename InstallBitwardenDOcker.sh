# Create a bitwarden user
sudo adduser bitwarden

# Set a password for the bitwarden user
sudo passwd bitwarden

# Add the bitwarden user to the docker group
sudo usermod -aG docker bitwarden

# Create a bitwarden directory
sudo mkdir /opt/bitwarden

# Set permissions for the /opt/bitwarden directory
sudo chmod -R 700 /opt/bitwarden

# Set the bitwarden user ownership of the /opt/bitwarden directory
sudo chown -R bitwarden:bitwarden /opt/bitwarden

su bitwarden

curl -Lso bitwarden.sh "https://func.bitwarden.com/api/dl/?app=self-host&platform=linux" && chmod 700 bitwarden.sh

./bitwarden.sh install
