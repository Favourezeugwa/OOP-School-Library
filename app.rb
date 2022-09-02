require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def create_person
    puts "Do you want to create a student (1) or teacher (2)? [Input the number]"
    input = gets.chomp().to_i
    case input
    when 1
      create_student
    when 2
      create_teacher
    else puts "Invalid entry"
    end
  end

  def create_student
    puts "student\'s age: "
    age = gets.chomp().to_i
    puts "student\'s name: "
    name = gets.chomp()
    puts "does student have parent permission? [Y/N]"
    parent_permission = gets.chomp().capitalize
    case parent_permission
    when "Y"
      true
    when "N"
      false
    end

    student = Student.new(age, name, parent_permission)
    @people.push(student)
    puts "Person created successfully!"
  end

  def create_teacher
    puts "Teacher\'s age: "
    age = gets.chomp().to_i
    puts "Teacher\'s name: "
    name = gets.chomp()
    puts "Specialization: "
    specialization = gets.chomp()

    teacher = Teacher.new(age, name, specialization)
    @people.push(teacher)
    puts "Person created successfully!"
  end

  def list_people
    puts
    @people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age} "
    end
  end

  def create_book
    puts "Book Title: "
    title = gets.chomp()
    puts "Author: "
    author = gets.chomp()

    book = Book.new(title, author)
    @books.push(book)
    puts "Book created successfully!"
  end

  def list_books
    puts
    @books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def create_rental
    puts "Select a book from the following list by number"
    @books.each_with_index do |book, index|
      puts "#{index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_input = gets.chomp().to_i

    puts "Select a person from the following list by number"
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_input = gets.chomp().to_i

    puts "Date: "
    date = gets.chomp()

    rental = Rental.new(date, @books[book_input], @people[person_input])
    @rentals.push(rental)
    puts "Rental created successfully!"
  end

end

