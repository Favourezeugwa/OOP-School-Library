require "json"

module FileHandler
  # WRITER
  def write_json(array, file_path)
    opts = {
      array_nl: "\n",
      object_nl: "\n",
      indent: "  ",
      space_before: " ",
      space: " "
    }
    File.open(file_path, "w") { |f| 
      f.write(JSON.generate(array, opts)) 
    }
  end

  # READER
  def read_json(file_path)
    file = File.read(file_path)
    JSON.parse(file)
  end

  # STORE BOOK IN JSON
  def store_books
    array = []
    @books.each do |book|
      array.push(
        {
          "title": book.title, 
          "author": book.author
        }
      )
    end
    write_json(array, "JSONdata/books.json")
  end

  # READ STORED BOOKS
  def read_books
    file  = File.read("JSONdata/books.json")
    parse_file = JSON.parse(file)
    parse_file.map do |book|
      @books.push(Book.new(book["title"], book["author"]))
    end
  end

  # STORE PEOPLE
  def store_people
    array = []
    @people.each do |person|
      if person.instance_of?(Student)
        array.push(
          {
            "id": person.id,
            "type": person.class,
            "age": person.age,
            "name": person.name,
            "parent_permission": person.parent_permission
          }
        )
        else
          array.push(
          {
            "id": person.id,
            "type": person.class,
            "age": person.age,
            "name": person.name,
            "specialization": person.specialization
          }
        )
      end
    end
    write_json(array, "JSONdata/people.json")
  end

  # READ PEOPLE
  def read_people
    parse_file = read_json("JSONdata/people.json")
    parse_file.map do |person|
      if person['type'] == 'teacher'
        teacher = Teacher.new(person['age'], person['name'], person['specialization'])
        teacher.id = person['id']
        @people.push(teacher)
      else
        student = Student.new(person['age'], person["name"], person['parent_permission'])
        id = person['id']
        @people.push(student)
      end
    end
  end

  
end
