from pymongo import MongoClient
connection = MongoClient('mongodb://rootuser:password123@documentdbcluster.cluster-c4z3dvcijoaa.us-east-1.docdb.amazonaws.com:27017/?replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false')
