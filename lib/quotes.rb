require_relative "mood_tracker_helper"

class Quotes 
  include MoodTracker
  
  def quotes_generator
    puts "hey, you're looking fabulous!"
      PROMPT.select("Let's boost your vibes! Please make a selection!") do |vibe|
        vibe.choice({ name: "Confidence", value: '1' })
        vibe.choice({ name: "Peace", value: '2' })
        vibe.choice({ name: "Energy", value: '3' })
        vibe.choice({ name: "Love", value: '4' })
      end 
  end 

  def good_vibes
    loop do
      case quotes_generator
      when '1'
        puts "chocolate"
      when '2'
        puts "Peanuts"
      when '3'
        puts "yo"
      when '4'
        puts "Heya"
      end
    end
  end
end 
