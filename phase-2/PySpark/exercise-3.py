from pyspark.sql import SparkSession
from pyspark.sql.functions import col

spark = SparkSession.builder.appName("Exercise3_PySpark").getOrCreate()

customers = spark.read.option("header", "true").csv("/samples/customers.csv")
sales = spark.read.option("header", "true").csv("/samples/sales.csv")

result = customers.join(sales,customers.customer_id == sales.customer_id,"left")\
              .filter(sales.customer_id.isNull())\
              .select(
                  customers.customer_id,
                  customers.first_name,
                  customers.last_name,
                  customers.city
              )
result.show()
