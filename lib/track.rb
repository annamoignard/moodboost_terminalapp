require "byebug"
require_relative "mood_tracker_helper"

class Track
  attr_reader :mood 
  include MoodTracker
  def todays_mood(user) 
    days = {monday: "monday",  tuesday: "tuesday", wednesday: "wednesday", thursday: "thursday"}
    day = PROMPT.select("What day would you like to track?", days)
    choices = {happy: "happy", excited: "excited", sleepy: "sleepy", nonchlant: "nonchlant", sad: "sad"}
    mood = PROMPT.select("How are you feeling today #{user.username}?", choices)
    {"day" => day, "mood" => mood}
  end
end

