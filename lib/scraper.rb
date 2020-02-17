require 'pry'
require 'nokogiri'
require 'httparty'


class Scraper


  doc = Nokogiri::HTML(open('http://metromontage.com/list-of-music-festivals-in-d-c-maryland-and-northern-virginia/'))
  binding.pry
# attr_accessor :event_list_url
# BASE_PATH = "http://metromontage.com"
# event_list_url = (BASE_PATH + "/list-of-music-festivals-in-d-c-maryland-and-northern-virginia/")
#
# binding.pry
#   def self.scrape_events(event_list_url)
#     doc = HTTParty.get(event_list_url)
#     index = Nokogiri::HTML(doc)
#     scraped_events = index.css("")
#     scraped_events.collect do |event|
#       binding.pry
#   end
# end
end
