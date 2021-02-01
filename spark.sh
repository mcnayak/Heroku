heroku run bin/spark-shell -a sparklearn 
sc.parallelize(1 to 1000000).reduce(_ + _)
