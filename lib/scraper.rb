
class Scraper
    def self.character_classes
        
        site = "https://dnd.wizards.com/%3Cnolink%3E/classes"
        doc = Nokogiri::HTML(open(site))
        starting_list =  doc.css(".item").each {|klass| puts klass.children[1].children[0].attributes["alt"].value}
        starting_list
        
    end 
    def self.race_choices
    
        site = "https://dnd.wizards.com/%3Cnolink%3E/races"

        doc = Nokogiri::HTML(open(site))
        doc_2 = doc.css('.item-content').css("h2").css("span") #.each {|race| race.text}
        puts doc_2.children
    
    end 
    def self.class_details(user_input)
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/classes/#{user_input}"
        doc = Nokogiri::HTML(open(site))
        details = doc.css("#content").css("p")[1..3]
        Class.new(user_input,details)
    end 
    def self.race_details(user_input)
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/races/#{user_input}"
        doc = Nokogiri::HTML(open(site))
         details = doc.css('.intro').css('p')[2..4]
         Race.new(user_input,details)
    end

end 