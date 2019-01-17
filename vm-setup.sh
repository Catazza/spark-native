# Install Java
sudo apt-get update
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin/java

# Install Scala
sudo apt-get install -y scala
sudo apt-get install -y wget
sudo wget http://apache.mirror.anlx.net/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz -P ~/Downloads
sudo tar zxvf ~/Downloads/spark-* -C /usr/local
sudo mv /usr/local/spark-* /usr/local/spark

# Add to ~/.profile
export SPARK_HOME=/usr/local/spark
export PATH=$PATH:$SPARK_HOME/bin


sudo chown -R ubuntu $SPARK_HOME

cp ./spark-env.sh $SPARK_HOME/conf/spark-env.sh
cp ./slaves $SPARK_HOME/conf/slaves

# Install Python and other stuff needed
sudo apt-get install -y python3
sudo apt-get install -y python3-pip
sudo python -m pip install Jupiter
sudo ln -s /usr/bin/python3 /usr/bin/python

# Get over amended pyspark script to have Python paths set up inside
cp ./pyspark $SPARK_HOME/bin/pyspark

# Get jupyter config
jupyter notebook --generate-config