require 'nokogiri'
require 'pry'
require 'open-uri'
require_relative "class_chooser/version"
require_relative 'scraper.rb'
require_relative 'cli.rb'
require_relative 'race.rb'
require_relative 'class.rb'
module ClassChooser
  class Error < StandardError; end
  # Your code goes here...
end
