# welcome to the mood tracker => get user's name 
class User
  attr_accessor :username

  def initialize(username)
    @username = username #should this be gets.chomp as well?
    # self.welcome_user
  end
  
  private #this means no one else can access 
  def self.welcome_user
      puts "Welcome to The Good Luck Generator!"
      puts "Please enter your name!"
      print "> "
      username = gets.chomp
      puts "Thank you #{username}, it's lovely to have you here!"
  end
  welcome_user
end 


# username = Welcome.new(username)
