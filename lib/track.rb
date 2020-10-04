require "byebug"
require_relative "mood_tracker_helper"

class Track
  include MoodTracker
  def initialize(day, mood)
    @day = day
    @mood = mood
  end
# user selection for tracking moods, this utilises tty-prompt, and is a simple function where
# user simply has to arrow up and down and press space bar. 
  def self.todays_mood(user)
    days = { Monday: 'Monday', Tuesday: 'Tuesday', Wednesday: 'Wednesday', Thursday: 'Thursday', Friday: 'Friday', Saturday: 'Saturday', Sunday: 'Sunday' }
    day = PROMPT.select('What day would you like to track #{user.username}?'.colorize(:blue), days)
    choices = { Happy: 'Happy', Excited: 'Excited', Sleepy: 'Sleepy', Nonchlant: 'Nonchlant', Sad: 'Sad', Stressed: 'Stressed', Hungry: 'Hungry', Overwhelmed: 'Overwhelmed', Peaceful: 'Peaceful' }
    mood = PROMPT.select('How are you feeling today #{user.username}?'.colorize(:magenta), choices)
    Track.new(day, mood)
  end
  # would like to add a feature asap for user to 'delete' moods so they can have a fresh table each week
  # would like to add feature to edit moods
  # would like to add feature to add a date and description to users daily moods 

  def to_arr # objects make things much easier
    return [@day, @mood]
  end

  def to_h
    {
      day: @day,
      mood: @mood
    }
  end
# converts our array of objects to hash, helps with pushing user responses to the json file 
  def self.convert(moods_array, type)
    moods_array.map do |mood|
      if type == :object
        Track.new(mood["day"], mood["mood"]) # creates an array for Track objects
      elsif type == :hash
        mood.to_h
      end
    end
  end
end
