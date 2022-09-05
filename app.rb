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

  # CREATE PERSON
  def create_person
    puts 'Do you want to create a student (1) or teacher (2)? [Input the number]'
    input = gets.chomp.to_i
    case input
    when 1
      create_student
    when 2
      create_teacher
    else puts 'Invalid entry'
    end
  end

  # CREATE STUDENT
  def create_student
    puts 'student\'s age: '
    age = gets.chomp.to_i
    if age < 5 || age > 65 || age.class != Integer || age.nil?
      puts 'Sorry, a student must have a valid age'
      return
    end

    puts 'student\'s name: '
    name = gets.chomp
    if name == ''
      puts 'Invalid name'
      return
    end
    
    puts 'Does student have parent permission? [Y/N]'
    parent_permission = gets.chomp.capitalize
    case parent_permission
    when 'Y'
      true
    when 'N'
      false
    else
      puts 'Invalid entry'
    end

    student = Student.new(age, name, parent_permission)
    @people.push(student)
    puts 'Person created successfully!'
  end

  # CREATE TEACHER
  def create_teacher
    puts 'Teacher\'s age: '
    age = gets.chomp.to_i
    if age < 18 || age > 65 || age.class != Integer || age.nil?
      puts 'Sorry, a teacher must have a valid age'
      return
    end

    puts 'Teacher\'s name: '
    name = gets.chomp
    if name == ''
      puts 'Invalid name'
      return
    end

    puts 'Specialization: '
    specialization = gets.chomp
    if specialization == ''
      puts 'Invalid specialization'
      return
    end

    teacher = Teacher.new(age, name, specialization)
    @people.push(teacher)
    puts 'Person created successfully!'
  end

  # LIST PEOPLE
  def list_people
    puts
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  # CREATE BOOK
  def create_book
    puts 'Book Title: '
    title = gets.chomp
    puts 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully!'
  end

  # LIST BOOKS
  def list_books
    puts
    @books.each_with_index do |book, index|
      puts "#{index}) Title: '#{book.title}', Author: #{book.author}"
    end
  end

  # CREATE RENTAL
  def create_rental
    puts 'Select a book from the following list by number'
    list_books
    book_input = gets.chomp.to_i

    puts 'Select a person from the following list by number'
    list_people
    person_input = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    rental = Rental.new(date, @books[book_input], @people[person_input])
    @rentals.push(rental)
    puts 'Rental created successfully!'
  end

  # LIST RENTALS
  def list_rentals
    list_people
    print 'ID of person: '
    input_id = gets.chomp.to_i
    person = nil
    @people.each do |item|
      person = item if item.id == input_id
    end

    puts 'Rentals: '
    person.rentals.each do |rental|
      puts "Date #{rental.date}, Book '#{rental.book.title}', by #{rental.book.author} "
    end
  end
end
