require 'rest-client'
require 'json'

url = 'https://api.example.com/data'
response = RestClient.get(url)
data = JSON.parse(response.body)

