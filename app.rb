require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
  def initialize
    @person = []
    @book = []
    @rental = []
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
    @person.push(student)
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
    @person.push(teacher)
    puts "Person created successfully!"
  end
end

