# Running XGBoost on Azure HDInsight Spark clusters

### Introduction
This repository has detailed steps on to build, install, and run XGBoost on HDInsight, the managed Hadoop and Spark solution on Azure.

![XGBoost](https://raw.githubusercontent.com/dmlc/dmlc.github.io/master/img/logo-m/xgboost.png) 
 
### XGBoost
XGBoost is an optimized distributed gradient boosting library designed to be highly efficient, flexible and portable. It implements machine learning algorithms under the Gradient Boosting framework. XGBoost provides a parallel tree boosting (also known as GBDT, GBM) that solve many data science problems in a fast and accurate way. The same code runs on major distributed environment (Hadoop, SGE, MPI) and can solve problems beyond billions of examples.

It is not designed as a generic Machine Learning framework; it is designed as a library very specialized in boosting tree algorithm, and is widely used from production to experimental projects.

For more details on XGBoost, please go to XGBoost [GitHub page](https://github.com/dmlc/xgboost).

### XGBoost with Spark
The following figure illustrates the new pipeline architecture with the latest XGBoost4J-Spark.
![XGBoost with Spark](https://raw.githubusercontent.com/dmlc/web-data/master/xgboost/unified_pipeline_new.png)

With XGBoost4J-Spark, users are able to use both low- and high-level memory abstraction in Spark, i.e. RDD and DataFrame/Dataset. The DataFrame/Dataset abstraction grants the user to manipulate structured datasets and utilize the built-in routines in Spark or User Defined Functions (UDF) to explore the value distribution in columns before they feed data into the machine learning phase in the pipeline. In the following example, the structured sales records can be saved in a JSON file, parsed as DataFrame through Spark's API and feed to train XGBoost model in two lines of Scala code.

### High-level steps
There are a few high-level steps that you need to do:
- Building XGBoost from source code
- Start a Spark session with XGBoost4J-Spark library loaded
- Import XGBoost and Spark Packages
- Train a simple XGBoost model
- Tune Hyper Parameters for your XGBoost Model using Spark
- Explain Parameters of the XGBoost Model
- Save the model to Azure Storage
 
 If you have any questions or feedback for this repo, feel free to send us email (hdifeedback at microsoft dot com).
