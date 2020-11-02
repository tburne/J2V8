
echo "Preparing Maven..."
curl https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -O
mkdir -p /opt
tar xzvf apache-maven-3.6.3-bin.tar.gz -C /opt/
chmod -R 777 /opt/apache-maven-3.6.3
