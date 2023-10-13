require_relative '../config/load_initializers'

class App
  attr_accessor :keep_going

  def self.call
    new
  end

  def initialize
    @keep_going = true
    @menu = Menu.new
    run
  end

  private

  def run
    puts 'Rodanddo app.....'
  end
end

App.call
