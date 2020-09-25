require_relative "mood_tracker_helper"


class Menu 
  include MoodTracker #this allows us to use all methods, even non self methods from the module
  def initialize(user)
    @track = Track.new
    @user = user 
  end 
  def menu_selection #.self seems to work but maybe I dont need it? To call a class method, which this is, you need to write the class name
    PROMPT.select("Please make a selection!".colorize(:light_blue)) do |menu|
      menu.choice({ name: "Track Today's Mood", value: '1' })
      menu.choice({ name: "View This Week's Moods", value: '2' })
      menu.choice({ name: "Give Me Some Good Luck", value: '3' })
      menu.choice({ name: "Exit", value: '4' })
    end
  end

  # I can't seem to get @track.todays_mood to connect (case 1 ), also cant print mood options
  def router
    loop do
      case menu_selection
      when '1'
        @track.todays_mood(@user)
      when '2'
        # View moods
      when '3'
        # Goodluck
      when '4'
        exit 
      end
    end
  end
end


