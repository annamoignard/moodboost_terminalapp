require_relative "mood_tracker_helper"

class Quotes 
  include MoodTracker
  # def initialize
  #   @quotes_generator = Quotes.new
  # end 
  # def quotes_generator
  #   puts "hey, you're looking fabulous!"
  #     PROMPT.select("Let's boost your vibes! Please make a selection!") do |vibe|
  #       vibe.choice({ name: "Confidence", value: '1' })
  #       vibe.choice({ name: "Peace", value: '2' })
  #       vibe.choice({ name: "Energy", value: '3' })
  #       vibe.choice({ name: "Love", value: '4' })
  #     end 
  # end 
#   def quotes_generator
#     puts "hey, you're looking fabulous!"
#      selection = PROMPT.select("Let's boost your vibes! Please make a selection!") do |vibe|
#         vibe.choice({ name: "Confidence", value: '1' })
#         vibe.choice({ name: "Peace", value: '2' })
#         vibe.choice({ name: "Energy", value: '3' })
#         vibe.choice({ name: "Love", value: '4' })
#       end 
#     return selection
#   end
  

#   def good_vibes
#     loop do
#       case quotes_generator
#       when '1'
#         puts "chocolate"
#       when '2'
#         puts "Peanuts"
#       when '3'
#         puts "yo"
#       when '4'
#         puts "Heya"
#       end
#     end
#   end
# end 

def quotes_generator
  puts "hey, you're looking fabulous!"
    return PROMPT.select("Let's boost your vibes! Please make a selection!") do |vibe|
      vibe.choice({ name: "Confidence", value: 'A confident quote' })
      vibe.choice({ name: "Peace", value: 'A peaceful quote' })
      vibe.choice({ name: "Energy", value: 'An energetic quote' })
      vibe.choice({ name: "Love", value: 'A loving quote' })
    end 
end 

def good_vibes
  loop do
      vibe_menu_selection = PROMPT.select("What would you like to do?" ) do |vibe_menu|
      vibe_menu.choice({ name: "Tell me a quote" , value: 1 })
      vibe_menu.choice({ name: "Go back" , value: 2 })        
    end 

    case vibe_menu_selection
    when '1'
      puts quotes_generator
    when '2'
      puts "Going back"
      break
    end
  end
end
end 