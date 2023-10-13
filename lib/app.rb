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
    while keep_going
      STDOUT.clear_screen
      @menu.display_menu
      puts 'Opção selecionada!' if keep_going?
      sleep 2
    end
  end

  def keep_going?
    @user_option = gets.chomp.to_i
    self.keep_going = false if @menu.options[@user_option] == :exit
    self.keep_going
  end
end

App.call
