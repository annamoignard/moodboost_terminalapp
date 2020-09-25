
class Moods
def initialize 
  @user_moods = {}
  @input_user_moods #initializing method??
end

def self.input_user_moods
  @user_moods << @choices 

  # was going to add a description option for them to add about their day but seems to
  # complex for the moment 
  # INPUTS.each do |input|
  #   puts "Tell me a bit about your day #{user.username}" 
  #   print '> '
  #   moods[input] = gets.chomp
  # end
  # user_moods
end
end 

# I have commented out termianl-table in menu for the moment so that it isn't all stuffed
# working on option two, which is view moods - 
# new files are moods, moods_repo 
# Maybe I should remove description, as that is gonna make things more complex
# Unsure how i can actually select my option for the user - would this need a case statement? 
# How can I collect the data stoed in track.rb (the array of choices, when the user makes a selection)