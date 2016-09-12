require 'httparty'
require 'pry'
require_relative 'secrets.rb'
class Indeed
  def initialize(zip_code, query)
    @publisher_key = KEY
    @zip_code = zip_code
    @query = query
  end
  
  def fetch_one
    response = HTTParty.get("http://api.indeed.com/ads/apisearch?publisher=#{@publisher_key}&format=json&q=#{@query}&l=#{@zip_code}%2C&sort=&radius=&st=&jt=&start=&limit=50&fromage=&filter=&latlong=1&co=us&chnl=&userip=1.2.3.4&useragent=Mozilla/%2F4.0%28Firefox%29&v=2")
  end
        
end

