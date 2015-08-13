require "httparty"

module NewYorkTime
  class Client
    api_key='031dcffa063c656da48b3d8739cabaa1:2:72672668'  
    BASE_URI="http://api.nytimes.com/svc/books/v3/lists/names.json?api-key=#{api_key}"
        

    def nyt
      response = HTTParty.get(BASE_URI)
      JSON.parse(response.body)
    end
  end
end
