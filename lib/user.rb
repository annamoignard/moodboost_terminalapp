# welcome to the mood tracker => get user's name
require 'colorize'

class User
  attr_reader :username

  def initialize(username = '')
    @username = username
  end

  # Getting user's name so we can greet them, and address them by name throughout application. Name is not saved
  # after exiting the application - this would be a good progression in the future to improve app!
  # Colorized used to create a nicer user experience 
  def self.welcome_user
    username = nil
    loop do
      puts 'Welcome to the Mood Booster App!'.colorize(:cyan)
      puts "Let's get started!".colorize(:magenta)
      puts 'Please enter your name!'.colorize(:cyan)
      print '> '
      username = gets.chomp
      break unless username.empty?
      # hanles error is user presses enter and doesnt enter their name. Will display main menu until they do.
      puts 'Houston! We have a problem! You must tell me your name! Try again my friend.'.colorize(:red)
    end
    puts "Thanks #{username}! It's lovely to have you here!".colorize(:cyan)
    puts "Let's get started!".colorize(:magenta)
    username
  end
end
