require "byebug"
require_relative "mood_tracker_helper"

class Track
  attr_reader :mood 
  include MoodTracker
  def todays_mood(user) # maybe I should repeat this and do one for days of week?
    choices = {happy: "happy", excited: "excited", sleepy: "sleepy", nonchlant: "nonchlant", sad: "sad"}
    mood = PROMPT.select("Tell me how you're feeling today #{user.username}?", choices)
    days = {monday: "monday",  tuesday: "tuesday", wednesday: "wednesday", thursday: "thursday"}
    day = PROMPT.select("What day is it? #{user.username}?", days)
    {"day" => day, "mood" => mood}
  end
end

