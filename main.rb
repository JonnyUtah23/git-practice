require 'colorize'
require_relative 'git'

class Main
  include Git

  def self.menu
    puts 'MAIN MENU'.colorize(:cyan)
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: config list'
    puts '3: Exit'.colorize(:cyan)
    choice = gets.to_i
    case choice
    when 1
      puts 'Enter git command'.colorize(:green)
      Git.git_command(gets.strip)
    when 2 
      Git.config
    when 3
      exit
    else
      puts 'Invalid choice'.colorize(:red)
    end

    menu
  end

end

Main.menu