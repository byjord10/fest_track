require_relative "./fest_track/version"
require 'httparty'
require 'nokogiri'
require 'pry'
require_relative './cli.rb'
require_relative './event.rb'
require_relative './scraper.rb'

module Event
    class Error < StandardError; end

  end
