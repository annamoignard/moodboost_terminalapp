require 'json'

# Mood data for reading to the terminal table
def read_moods
  raw_data = File.read("#{Dir.home}/desktop/terminalapp/public/moods.json")
  mood_data = JSON.parse(raw_data)
  Track.convert(mood_data, :object)
end

# error handling = errors are handled through error free code
# begin
#   File.read('moods.json')
# rescue
#   puts "Can't open this file to view and track moods"
# end

# Mood data that is written to the .json file after user exit's app
def write_moods(mood_data)
  stored_stored = Track.convert(mood_data, :hash)
  File.write("#{Dir.home}/desktop/terminalapp/public/moods.json", JSON.pretty_generate(stored_stored))
end
