from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum

spark = SparkSession.builder.appName("Exercise7_PySpark").getOrCreate()
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

sales = sales.withColumn("total_amount", col("total_amount").cast("double"))
result = sales.groupBy("customer_id") \
    .agg(sum("total_amount").alias("total_spend")) \
    .orderBy(col("total_spend").desc())

result.show()
