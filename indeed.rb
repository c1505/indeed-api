require 'httparty'
require 'pry'
class Indeed
  def initialize(publisher_key)
    @publisher_key = publisher_key
  end
  
  def fetch_one
    response = HTTParty.get("http://api.indeed.com/ads/apisearch?publisher=#{@publisher_key}&format=json&q=ruby&l=27713%2C&sort=&radius=&st=&jt=&start=&limit=50&fromage=&filter=&latlong=1&co=us&chnl=&userip=1.2.3.4&useragent=Mozilla/%2F4.0%28Firefox%29&v=2")
    binding.pry
  end
        
end