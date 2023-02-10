import requests
import json

# Define the Elasticsearch host URL
es_host = "http://localhost:9200"

# Function to create an index
def create_index(index_name):
    url = es_host + "/" + index_name
    headers = { "Content-Type": "application/json" }
    request_body = {
        "settings": {
            "number_of_shards": 1,
            "number_of_replicas": 0
        }
    }
    response = requests.put(url, headers=headers, data=json.dumps(request_body))
    if response.status_code == 200:
        print("Index created successfully: " + index_name)
    else:
        print("Failed to create index: " + index_name)

# Function to delete an index
def delete_index(index_name):
    url = es_host + "/" + index_name
    response = requests.delete(url)
    if response.status_code == 200:
        print("Index deleted successfully: " + index_name)
    else:
        print("Failed to delete index: " + index_name)

# Function to check if an index exists
def index_exists(index_name):
    url = es_host + "/" + index_name
    response = requests.head(url)
    if response.status_code == 200:
        return True
    else:
        return False

# Example usage
index_name = "test_index"

if index_exists(index_name):
    delete_index(index_name)

create_index(index_name)
