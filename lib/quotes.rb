require_relative "mood_tracker_helper"

class Quotes 
  include MoodTracker

def quotes_generator
  puts "hey, you're looking fabulous!"
    return PROMPT.select("Let's boost your vibes! Please make a selection!") do |vibe|
      vibe.choice({ name: "Confidence Boost", value: 'A confident quote' })
      vibe.choice({ name: "Zen Boost", value: 'A peaceful quote' })
      vibe.choice({ name: "Energy Boost", value: 'An energetic quote' })
      vibe.choice({ name: "Mood Boost", value: 'A loving quote' })
    end 
end 

def good_vibes
  loop do
      vibe_menu_selection = PROMPT.select("What would you like to do?" ) do |vibe_menu|
      vibe_menu.choice({ name: "Tell me a quote" , value: '1' })
      vibe_menu.choice({ name: "Go back" , value: '2' })        
    end 

    case vibe_menu_selection
    when '1'
      puts quotes_generator
    when '2'
      puts "Going back"
      break
    else 
      puts "Something went wrong!!"
    end
  end
end
end 