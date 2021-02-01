import json
import collections
import psycopg2

DATABASE_URL = 'postgres://usakgroadfartx:85710aaca70163eef1edb98451df88b904651ae21aa4c7c3c94934195b4ba2cf@ec2-54-157-66-140.compute-1.amazonaws.com:5432/ddu93hjadrqo9e'

conn = psycopg2.connect(DATABASE_URL, sslmode='require')
cursor = conn.cursor()

cursor.execute("SELECT * FROM salesforce.contact")

rows = cursor.fetchall()
print(cursor.rowcount)
rowarray_list = []
for row in rows:
    t = (row[0], row[1], row[3], row[5], row[7])
    rowarray_list.append(t)
print(rowarray_list)

j = json.dumps(rowarray_list)

with open("contact_rowarrays.js", "w") as f:
    f.write(j)

objects_list = []
for row in rows:
    d = collections.OrderedDict()
    d["AssistantName"] = row[0]
    d["AssistantPhone"] = row[1]
    d["Department"] = row[3]
    d["Email"] = row[5]
    d["Id"] = row[7]
    objects_list.append(d)

j = json.dumps(objects_list)


with open("contact_objects.js", "w") as f:
    f.write(j)

conn.close()