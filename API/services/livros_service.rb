module Livros 
    include HTTParty
    base_uri 'http://fakerestapi.azurewebsites.net'
    format :json 
    headers Accept: 'application/json.v1',
            "content-type": 'application/json; charset=utf-8'
end
