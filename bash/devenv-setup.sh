# JetBrains Toolbox
cd /opt
wget -cO jetbrains-toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
tar -xzf jetbrains-toolbox.tar.gz
TOOLBOX_DIR=$(find . -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
cd $TOOLBOX_DIR
./jetbrains-toolbox &
# removing Toolbox
cd ..
# rm -r $DIR
rm jetbrains-toolbox.tar.gz
echo "JetBrains Toolbox installed successfully"

## Java 8 setup
apt-get install openjdk-8-jdk

## Maven setup
apt-get install maven

## Docker setup
apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y
