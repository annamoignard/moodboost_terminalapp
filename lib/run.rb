# Here are my gems 
require "tty-prompt"
require "colorize"
require "terminal-table"
# Classes loaded 
require_relative "user"
require_relative "track"
require_relative "menu"
require_relative "moods_repo"
require_relative "quotes"

username = User.welcome_user
user = User.new(username)
menu = Menu.new(user) #instance of the class where we can call the instance methods of menu class
menu.router  
# moods.input_user_moods