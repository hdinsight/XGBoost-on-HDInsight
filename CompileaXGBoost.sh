sudo apt-get update
sudo apt-get install -y maven git build-essential cmake python-setuptools
git clone --recursive https://github.com/dmlc/xgboost

#builds XGBoost using Maven
cd xgboost/jvm-packages
mvn -DskipTests=true install

#put the compiled packge to shared storage
#put to root folder for simplicity
hadoop fs -put -f xgboost4j-spark/target/xgboost4j-spark-0.7.jar /
hadoop fs -put -f xgboost4j/target/xgboost4j-0.7.jar /
hadoop fs -put -f xgboost4j-example/target/xgboost4j-example-0.7.jar /


#put the sample data to shared storage
hadoop fs -put -f ..//demo/data/agaricus.txt* /
