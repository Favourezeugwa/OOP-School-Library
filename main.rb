require_relative "app"

class Main
  def initialize
    @app = App.new
    @response = 0
  end

  def menu_options
    puts "WELCOME TO THE SCHOOL LIBRARY APP!"
    while @response != 7
    puts "Please choose an option by entering a number:"
    puts "1 - List all books"
    puts "2 - List all people"
    puts "3 - Create a person"
    puts "4 - Create a book"
    puts "5 - Create a rental"
    puts "6 - List all rentals for a given person id"
    puts "7 - Exit"
    start_app
    end
  end

  def start_app
    @response = gets.chomp().to_i
    case @response
    when 1
      @app.list_books
    when 2
      @app.list_people
    when 3
      @app.create_person
    when 4
      @app.create_book
    when 5
      @app.create_rental
    end
  end
end

main = Main.new
main.menu_options