require "json"

def read_moods
  raw_data = File.read"../public/moods.json"
  JSON.parse(raw_data)
 end 
 
 def add_mood
   @user_moods << {"day" => "day_entry", "mood" => "mood_entry"}
 end 
 
 def write_moods
   File.write("../public/moods.json", JSON.pretty_generate(@user_moods))
 end 