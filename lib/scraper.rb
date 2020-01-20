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
        doc_2 = doc.css('.item-content').css("h2").css("span").each {|race| race.text}
        puts doc_2.children
    
    end 

    def self.fighter_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/classes/fighter"

        doc = Nokogiri::HTML(open(site))
        puts doc.css("#content").css("p")[1..3]
    end 
    def self.wizard_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/classes/wizard"

        doc = Nokogiri::HTML(open(site))
        puts doc.css("#content").css("p")[1..3]
            
    end 
    def self.rouge_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/classes/rogue"
        doc = Nokogiri::HTML(open(site))
        puts doc.css("#content").css("p")[1..3]
    end 
    def self.cleric_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/classes/cleric"

        doc = Nokogiri::HTML(open(site))
        puts doc.css("#content").css("p")[1..3]
    end 
    def self.ranger_info
        site = 'https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/classes/ranger' 
        doc = Nokogiri::HTML(open(site))
        puts doc.css("#content").css("p")[1..3]
    end
   
    def self.half_orc_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/races/halforc"

        doc = Nokogiri::HTML(open(site))
        puts doc.css('.intro').css('p')[2..4]
    end 
    def self.human_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/races/human"

        doc = Nokogiri::HTML(open(site))
        puts doc.css('.intro').css('p')[2..4]
    end 
    def self.elf_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/races/elf"

        doc = Nokogiri::HTML(open(site))
        puts doc.css('.intro').css('p')[2..4]
    end 
    def self.dwarf_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/races/dwarf"

        doc = Nokogiri::HTML(open(site))
        puts doc.css('.intro').css('p')[2..4]
    end 
    def self.halfling_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/races/halfling"

        doc = Nokogiri::HTML(open(site))
        puts doc.css('.intro').css('p')[2..4] 
    end 
    def self.gnome_info
        site = "https://dnd.wizards.com/dungeons-and-dragons/what-is-dnd/races/gnome"

        doc = Nokogiri::HTML(open(site))
        puts doc.css('.intro').css('p')[2..4]
    end 
end 