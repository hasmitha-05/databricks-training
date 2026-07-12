from pyspark.sql import SparkSession
from pyspark.sql.functions import count, col

spark = SparkSession.builder.appName("Exercise6_PySpark").getOrCreate()
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

result = sales.groupBy("customer_id") \
    .agg(count("sale_id").alias("total_sales")) \
    .filter(col("total_sales") > 1) \
    .orderBy(col("total_sales").desc())

result.show()
