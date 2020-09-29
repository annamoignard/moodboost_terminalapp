require_relative "mood_tracker_helper"

class Quotes 
  include MoodTracker

def quotes_generator
    return PROMPT.select("Let's boost your vibes! Please make a selection!".colorize(:magenta)) do |vibe|
      vibe.choice({ name: "Confidence Boost", value: 'Skill and confidence are an unconquered army.- George Herbert' })
      vibe.choice({ name: "Zen Boost", value: 'Wherever you are, it’s the place you need to be - Maxime Lagacé' })
      vibe.choice({ name: "Energy Boost", value: 'The future depends on what you do today. - Gandhi' })
      vibe.choice({ name: "Mood Boost", value: 'Happiness is when what you think, what you say, and what you do are in harmony. - Gandhi' })
    end 
end 

def good_vibes
  loop do
      vibe_menu_selection = PROMPT.select("What would you like to do?".colorize(:magenta)) do |vibe_menu|
      vibe_menu.choice({ name: "Tell me a quote" , value: '1' })
      vibe_menu.choice({ name: "Go back" , value: '2' })        
    end 

    case vibe_menu_selection
    when '1'
      puts quotes_generator
    when '2'
      puts "We're back at the main menu!".colorize(:green)
      break
    else 
      puts "Something went wrong!!".colorize(:red)
    end
  end
end
end 