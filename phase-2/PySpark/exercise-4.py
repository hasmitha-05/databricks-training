from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum

spark = SparkSession.builder.appName("Exercise4_PySpark").getOrCreate()
customers = spark.read.option("header", "true").csv("/samples/customers.csv")
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

sales = sales.withColumn("total_amount", col("total_amount").cast("double"))
result = customers.join(sales,"customer_id")\
          .groupBy("city")\
          .agg(sum("total_amount").alias("totalRevenue"))\
          .orderBy(col("total_revenue").desc())

result.show()
