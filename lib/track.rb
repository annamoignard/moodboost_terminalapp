require "byebug"
require_relative "mood_tracker_helper"

class Track
  include MoodTracker
  def initialize(day, mood)
    @day = day
    @mood = mood
  end 
  def self.todays_mood(user) 
    days = {monday: "monday",  tuesday: "tuesday", wednesday: "wednesday", thursday: "thursday"}
    day = PROMPT.select("What day would you like to track?", days)
    choices = {happy: "happy", excited: "excited", sleepy: "sleepy", nonchlant: "nonchlant", sad: "sad"}
    mood = PROMPT.select("How are you feeling today #{user.username}?", choices)
    Track.new(day, mood)
  end

  def to_arr #objects make things much easier 
    return [@day, @mood]
  end 

  def self.create(moods_array)
    moods_array.map do |mood|
      Track.new(mood["day"], mood["mood"]) #creates an array for Track objects 
    end 
  end 
end

