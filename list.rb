module List
  # LIST PEOPLE
  def list_people
    puts
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end
  
  # LIST BOOKS
  def list_books
    puts
    @books.each_with_index do |book, index|
      puts "#{index}) Title: '#{book.title}', Author: #{book.author}"
    end
  end
  
  # LIST RENTALS
  def list_rentals
    list_people
    input_id = take_input_label("ID of person")
    person = nil
    @people.each do |item|
      person = item if item.id == input_id
    end
  
    put_label('Rentals: ')
    person.rentals.each do |rental|
      put_label("Date #{rental.date}, Book '#{rental.book.title}', by #{rental.book.author} ")
    end
  end

  # def show(message, )
  #   puts 'message'
  # end

  def put_label(label)
    puts label.to_s
  end


end
