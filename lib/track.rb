require_relative "mood_tracker_helper"

# why wont this connect OMG :( :( PLEASE WORK
class Track
  include MoodTracker
  def todays_mood(user)
    choices = %w(happy excited sleepy nonchlant sad)
    PROMPT.multi_select("Tell me how you're feeling today #{user.username}?", choices)
  end
end

# My run file wont work - fixed
# user name doesnt work on this page
# How can I get my username to be inserted in line 9? currently, it is undefined variable,
# but actually it's a user input gets.chomp from the user page.
# When user selects 1 it should come to this page and run TRACK however it doesnt!
# what is that scary message on my terminal! :O
