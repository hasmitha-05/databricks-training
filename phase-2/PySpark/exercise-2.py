from pyspark.sql import SparkSession
from pyspark.sql.functions import sum
spark = SparkSession.builder.appName("Sales").getOrCreate()
sales = spark.read.csv("/samples/sales.csv", header=True, inferSchema=True)
result = sales.groupBy("customer_id").sum("total_amount")
result.orderBy("sum(total_amount)", ascending=False).show(3)
