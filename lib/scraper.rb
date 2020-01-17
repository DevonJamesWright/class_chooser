#!/usr/bin/env ruby
require 'nokogiri'
require_relative "class_chooser/version"
require 'open-uri'
require 'pry'

class Scraper
def character_classes
site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dd/classes"
doc = Nokogiri::HTML(open(site))
 starting_list =  doc.css(".item").each {|klass| puts klass.children[1].children[0].attributes["alt"].value}
 puts starting_list
end 

def fighter_info
site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/classes/fighter"

doc = Nokogiri::HTML(open(site))
puts doc.css("#content").css("p")[1..3]
binding.pry
end 
end 