# welcome to the mood tracker => get user's name 
require 'colorize'

class User
  attr_reader :username

  def initialize(username = "")
    @username = username 
  end
  
  private #this means no one else can access 
  def self.welcome_user
      puts "Welcome to the Mood Booster App!".colorize(:magenta)
      puts "You can track your daily moods, view the week's moods, or recieve a 'feel-good' quote to boost your mood!".colorize(:cyan)
      puts "Let's get started!".colorize(:magenta)
      puts "Please enter your name!".colorize(:cyan)
      print "> "
      username = gets.chomp
      puts "Thanks #{username}! It's lovely to have you here!"
      puts "Let's get started!"
      username 
  end
end 


# username = Welcome.new(username)
