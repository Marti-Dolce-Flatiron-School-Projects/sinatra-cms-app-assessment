# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'json'

url = URI("https://api.airtable.com/v0/#{AIRTABLE_APP}/main?sort%5B0%5D%5Bfield%5D=id&sort%5B0%5D%5Bdirection%5D=asc&view=json-grid&api_key=#{AIRTABLE_KEY}")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)
request['Cookie'] = 'brw=brwgeW3wk8eKT6a2I'

response = https.request(request)
puts response.read_body
