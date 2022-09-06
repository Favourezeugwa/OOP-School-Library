require "json"

module FileHandler
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

  def read_json(file_path)
    file = File.read(file_path)
    JSON.parse(file)
  end

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
    write_json(array, "./data/books.json")
  end

  def read_books
    file  = File.read("./data/books.json")
    parse_file = JSON.parse(file)
    parse_file.map do |book|
      @books.push(Book.new(book["title"], book["author"]))
    end
  end

  def store_people
    array = []
    @people.each do |person|
      array.push(
        {
          "id": person.id,
          "type": person.class,
          "age": person.age,
          "name": person.name,
          "parent_permission": person.parent_permission
        }
      )
    end
    write_json(array, "./data/people.json")
  end
end
