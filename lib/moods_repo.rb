require "json"


# def initialize  - this isnt allowed and overides big boss class from ruby (object class) look more into ingetitence
#   @moods = read_moods
# end

def read_moods
  raw_data = File.read("#{Dir.home}/desktop/terminalapp/public/moods.json") 
  mood_data = JSON.parse(raw_data) 
  Track.convert(mood_data, :object)
end 

# def add_mood
#   # @moods << {"day" => "day_entry", "mood" => "mood_entry"}
# end 



def write_moods(mood_data)
  stored_stored = Track.convert(mood_data, :hash)
  File.write("#{Dir.home}/desktop/terminalapp/public/moods.json", JSON.pretty_generate(stored_stored))
end 
