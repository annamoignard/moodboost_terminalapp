require "json"


# def initialize  - this isnt allowed and overides big boss class from ruby (object class) look more into ingetitence
#   @moods = read_moods
# end

def read_moods
  raw_data = File.read("#{Dir.home}/desktop/terminalapp/public/moods.json") 
  mood_data = JSON.parse(raw_data) 
  Track.convert(mood_data, :object)
end 

# error handling 
# begin
#   File.read('moods.json')
# rescue
#   puts "Can't open this file to view and track moods"
# end

def write_moods(mood_data)
  stored_stored = Track.convert(mood_data, :hash)
  File.write("#{Dir.home}/desktop/terminalapp/public/moods.json", JSON.pretty_generate(stored_stored))
end 


