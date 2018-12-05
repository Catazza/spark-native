# Install Java
sudo apt-get update
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin/java

# Install Scala
sudo apt-get install scala
wget http://apache.mirrors.tds.net/spark/spark-2.0.2/spark-2.0.2-bin-hadoop2.7.tgz -P ~/Downloads
sudo tar zxvf ~/Downloads/spark-* -C /usr/local
sudo mv /usr/local/spark-* /usr/local/spark

# Add to ~/.profile
export SPARK_HOME=/usr/local/spark
export PATH=$PATH:$SPARK_HOME/bin


sudo chown -R ubuntu $SPARK_HOME