# welcome to the mood tracker => get user's name 
class User
  attr_reader :username

  def initialize(username)
    @username = username 
  end
  
  private #this means no one else can access 
  def self.welcome_user
      puts "Welcome to the Mood Booster!"
      puts "Please enter your name!"
      print "> "
      username = gets.chomp
      puts "Thanks #{username}! It's lovely to have you here!"
      puts "Let's get started!"
      username 
  end
end 


# username = Welcome.new(username)
