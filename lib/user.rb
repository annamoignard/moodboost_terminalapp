# welcome to the mood tracker => get user's name 
require 'colorize'

class User
  attr_reader :username

  def initialize(username = "")
    @username = username 
  end
  
#   private #this means no one else can access 
#   def self.welcome_user
#     username = nil
#     loop do 
#     puts "Welcome to the Mood Booster App!".colorize(:magenta)
#     puts "You can track your daily moods, view the week's moods, or recieve a 'feel-good' quote to boost your mood!".colorize(:cyan)
#     puts "Let's get started!".colorize(:magenta)
#     puts 'Please enter your name!'.colorize(:cyan)
#     print "> "
#     username = gets.chomp
#     break unless username.empty?
#     puts "Huston! We have a problem! You must tell me your name! Try again my friend.".colorize(:red)
#     puts "Thanks #{username}! It's lovely to have you here!"
#     puts "Let's get started!"
#     username 
#   end 
# end 

def self.welcome_user
  username = nil
  loop do 
    puts "Welcome to the Mood Booster App!".colorize(:magenta)
    puts "You can track your daily moods, view the week's moods, or recieve a 'feel-good' quote to boost your mood!".colorize(:cyan)
    puts "Let's get started!".colorize(:magenta)
    puts 'Please enter your name!'.colorize(:cyan)
    print "> "
    username = gets.chomp
    break unless username.empty?
    puts "Houston! We have a problem! You must tell me your name! Try again my friend.".colorize(:red)
  end
  puts "Thanks #{username}! It's lovely to have you here!".colorize(:cyan)
  puts "Let's get started!".colorize(:magenta)
  username 
end
end


# username = Welcome.new(username)
