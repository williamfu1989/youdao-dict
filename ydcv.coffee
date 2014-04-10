http = require 'http'

args = process.argv.splice 2

user = "williamfu"
key = "1769159342"

http.get 'http://fanyi.youdao.com/openapi.do?keyfrom='+ user + '&key=' + key + '&type=data&doctype=json&version=1.1&q='+ encodeURIComponent(args[0]), (resp) ->
  resp.on 'data', (chunk) ->
    console.log JSON.parse(chunk.toString()).translation
