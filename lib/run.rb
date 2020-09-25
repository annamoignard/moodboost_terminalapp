# Here are my gems 
require "tty-prompt"
require "colorize"
# Classes loaded 
require_relative "user"
require_relative "track"
require_relative "menu"

username = User.welcome_user
user = User.new(username)
menu = Menu.new(user) #instance of the class where we can call the instance methods of menu class
menu.router  