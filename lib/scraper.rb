require 'pry'
require 'nokogiri'
require 'httparty'
require 'byebug'

# attr_accessor :name, :location, :url


  def scraper
    url = "https://www.musicfestivalwizard.com/all-festivals/?festival_guide=us-festivals&month=&festivalgenre=&festivaltype=&festival_length=&festival_size="
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    events = parsed_page.css('div.article')
    events.each do |event|
      event = {
        name: "events.css('a').text",
        location: "events.css('div.search-meta').text",
        url: """https://www.musicfestivalwizard.com/all-festivals/?festival_guide=us-festivals&month=&festivalgenre=&festivaltype=&festival_length=&festival_size=" + events.css('a')[0].attributes["href"].value}
      end
    end
    scraper
