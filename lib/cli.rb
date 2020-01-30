
class CLI
    attr_accessor :starter_input, :class_input, :race_input, :human_menu_input, :elf_menu_input, :half_orc_menu_input, :dwarf_menu_input, :halfling_menu_input, :gnome_menu_input, :fighter_menu_input, :wizard_menu_input, :cleric_menu_input, :rouge_menu_input, :ranger_menu_input
   def initialize
        start 
    end 
    def exit 
        p "Good-Bye!"
    end 
    def start
        puts "
        
        
        "
        puts "Welcome Adventurer! Today is the beginning of a new world, full of dungeons and giant lizard monsters!"
        puts "Now Adventurer, what is your name?(Write out your name!)"
        @starter_input = gets.chomp
        puts "So your name is #{@starter_input}?(y/n)"
        answer = gets.chomp
        if answer == 'y'
        puts "Ha! That's quite a name! Let's Get Started."
        race_options
        elsif answer == "exit"
            exit
        else
            puts "Let's try this again." 
            start
            
        end 
    end 
    def race_options
        puts "So, where to begin. Well,#{@starter_input}, what land do you hail from?(Select a race by pressing 1-6)"
         race = Scraper.race_choices
         @race_input = gets.to_i
         case
         when @race_input == 1
            human_option_menu
         when @race_input == 2 
            elf_option_menu
         when @race_input == 3 
            dwarf_option_menu
         when @race_input == 4
            halfling_option_menu
         when @race_input == 5
            gnome_option_menu
         when @race_input == 6
            half_orc_option_menu
         else
            puts "That's not a valid choice. Let's try this again."
            race_options 
         end 
    end 
        def class_option?
            puts "So, you're a #{race_input}?(y/n)"
                secondary_input = gets.chomp
                if secondary_input == "y"
                    class_options
                elsif secondary_input == "n"
                    race_options
                else
                    puts "That's not a valid option."
                    class_option?
                end 
        end 
        def human_option_menu
            puts "A Human, eh? Commonfolk as some might say. Did you want to know more about Humans?"
            puts "Or did ya mean to tell me you were somethin' different?(y/n)"
            @human_menu_input = gets.chomp
            if @human_menu_input == "y"
                @race_input = "Human"
                Scraper.race_details(@race_input.downcase)
               race = Race.all.find {|race| race.name == @race_input.downcase}
             puts race.details
               puts "
                
                "
                class_option?
            elsif @human_menu_input == "n"
                race_options
            
            else
                puts "That's not a valid option."
                human_option_menu
            end     
        end 
        def elf_option_menu
            puts "An Elf, the mysterious race of majestic beings from nowhere. Did you want to know more about Elves?"
            puts "Or did ya mean to tell me you were somethin' different?(y/n)"
            @elf_menu_input = gets.chomp
            if @elf_menu_input == "y"
                @race_input = "Elf"
                Scraper.race_details(@race_input.downcase)
               race = Race.all.find {|race| race.name == @race_input.downcase}
             puts race.details
                puts "
                
                "
                class_option?
            elsif @elf_menu_input == "n"
                race_options
            else
                puts "That's not a valid option."
                elf_option_menu
            end 
        end 
        def dwarf_option_menu
            puts "A dwarf eh? It's rare to see one of your kind outside of the mountains. Out for an expedition are we?"
            puts "Or did ya mean to tell me you were somethin' else? (y/n)"
            @dwarf_menu_input = gets.chomp
            if @dwarf_menu_input == "y"
                @race_input = "Dwarf"
                Scraper.race_details(@race_input.downcase)
               race = Race.all.find {|race| race.name == @race_input.downcase}
             puts race.details
                puts "
                
                "
                class_option?
            elsif @dwarf_menu_input == "n"
                race_options
            else
                puts "That's not a valid option."
                dwarf_option_menu
            end    
        end  
        def half_orc_option_menu
            puts "A Half-Orc! Will you lead your friends with valor? Or destroy those who cross you?"
            puts " Did you want to know more about Half-Orcs? Or did ya mean to tell me you were somethin' different?(y/n)"
            @half_orc_menu_input = gets.chomp
            if @half_orc_menu_input == "y"
                @race_input = "HalfOrc"
                Scraper.race_details(@race_input.downcase)
               race = Race.all.find {|race| race.name == @race_input.downcase}
             puts race.details
                puts "
                
                "
                @race_input = "Half-Orc"
                class_option?
            elsif @half_orc_menu_input == "n"
                race_options
            else
                puts "That's not a valid option."
                half_orc_option_menu
            end 
        end     
        def halfling_option_menu
            puts "Ha Ha Ha! A Halfling! Here to create merriment are we? Did you want to know more about Halflings?"
            puts "Or did ya mean to tell me you were somethin' different?(y/n)"
            @halfling_menu_input = gets.chomp
            if @halfling_menu_input == "y"
                @race_input = "Halfling"
                Scraper.race_details(@race_input.downcase)
               race = Race.all.find {|race| race.name == @race_input.downcase}
             puts race.details
                puts "
                
                "
                class_option?
            elsif @halfling_menu_input == "n"
                race_options
            else
                puts "That's not a valid option."
                halfling_option_menu
            end  
        end   
        def gnome_option_menu
            puts "Ah, a Gnome. As curious as you are innovative."
            puts " Did you want to know more about Gnomes? Or did ya mean to tell me you were somethin' different?(y/n)"
            @gnome_menu_input = gets.chomp
            if @gnome_menu_input == "y"
                @race_input = "Gnome"
                Scraper.race_details(@race_input.downcase)
               race = Race.all.find {|race| race.name == @race_input.downcase}
             puts race.details
                puts "
                
                "
                class_option?
            elsif @gnome_menu_input == "n"
                race_options
            else
                puts "That's not a valid option."
                gnome_option_menu
            end     
        end 
        def class_options
            puts "Alright #{@starter_input}, so you're a #{race_input}. What kind of adventurer are you? (Choose between 1-5)"
            Scraper.character_classes
            @class_input = gets.to_i
            case 
            when @class_input == 1 
                fighter_option_menu
            when @class_input == 2 
                wizard_option_menu
            when @class_input == 3 
                cleric_option_menu
            when @class_input == 4 
                rouge_option_menu
            when @class_input == 5 
                ranger_option_menu
            when @class_input == 6 
                puts "Those classes will become available soon!"
                class_options
            else 
                puts "That's not a valid choice, how 'bout choosing again?"
                class_options
            end 

        end 

        def fighter_option_menu
            puts "A Fighter eh? Would you like to know more about Fighters?"
                puts "Or did ya mean to tell me somethin' different?(y/n)"
            @fighter_menu_input = gets.chomp
            if @fighter_menu_input == "y"
                @class_input = "Fighter"
                Scraper.class_details(@class_input.downcase)
               khlass = Class.all.find {|khlass| khlass.name == @class_input.downcase}
             puts khlass.details
                begin?
            elsif
                @fighter_menu_input == "n" 
                class_options
            else 
                puts "That's not a valid choice"
                fighter_option_menu
                
            end 
        end 
        def wizard_option_menu
            puts "A Wizard,master of the arcane. Would you like to know more about Wizards?"
            puts "Or did ya mean to tell me somethin' different?(y/n)"
            @wizard_menu_input = gets.chomp
            if @wizard_menu_input == "y"
                @class_input = "Wizard"
                Scraper.class_details(@class_input.downcase)
               khlass = Class.all.find {|khlass| khlass.name == @class_input.downcase}
             puts khlass.details
                begin?
            elsif
                @wizard_menu_input == "n" 
                class_options
            else
                puts "That's not a valid option."
                wizard_option_menu
            end 
        end 
        def cleric_option_menu
            puts "A Cleric, a catalyst for the gods. Would you like to know more about Clerics?"
            puts "Or did ya mean to tell me somethin' different?(y/n)"
            @cleric_menu_input = gets.chomp
            if @cleric_menu_input == "y"
                @class_input = "Cleric"
                Scraper.class_details(@class_input.downcase)
               khlass = Class.all.find {|khlass| khlass.name == @class_input.downcase}
             puts khlass.details
                begin?
            elsif
                @cleric_menu_input == "n" 
                class_options
            else
                puts "That's not a valid option."
                cleric_option_menu
            end 
        end 
        def rouge_option_menu
            puts "Ah, a Rogue, child of the night. Would you like to know more about Rogues?"
                puts "Or did ya mean to tell me somethin' different?(y/n)"
            @rouge_menu_input = gets.chomp
            if @rouge_menu_input == "y"
                @class_input = "Rogue"
                Scraper.class_details(@class_input.downcase)
               khlass = Class.all.find {|khlass| khlass.name == @class_input.downcase}
             puts khlass.details
                begin?
            elsif
                @rouge_menu_input == "n" 
                class_options
            else
                puts "That's not a valid option."
                rouge_option_menu
            end 
        end 
        def ranger_option_menu
            puts "Well Ranger, has the forest stirred so much that it convinced you to come here? Would you like to know more about Rangers?"
            puts "Or did ya mean to tell me somethin' different?(y/n)"
            @ranger_menu_input = gets.chomp
            if @ranger_menu_input == "y"
                @class_input = "Ranger"
                Scraper.class_details(@class_input.downcase)
               khlass = Class.all.find {|khlass| khlass.name == @class_input.downcase}
             puts khlass.details
                begin?
            elsif
                @ranger_menu_input == "n" 
                class_options
            else 
                puts "That's not a valid option."
                ranger_option_menu
            end 
        end 

        def begin?
            puts "
            
            
            "
            puts "So #{@starter_input}, you're a #{@race_input} #{@class_input}. Does that sound right? (y/n)"
            @final_input = gets.chomp
            if @final_input == 'y'
                puts "Alright then! Our adventure begins in the kingdom of Havengaard, in a small tavern in the slums..."
            elsif @final_input == 'n'
                puts "What did you want to change?"
                puts "1. My name"
                puts "2. My race"
                puts "3. My class"
                going_back 
            else puts "That's not a valid option"
                begin?
            end 
        end 

        def going_back
            quick_move = gets.to_i
            if quick_move == 1
                start 
            elsif quick_move == 2 
                race_options
            elsif quick_move == 3 
                class_options
            else
                puts "That's not a valid choice"
                begin? 
            end
        end  
end 