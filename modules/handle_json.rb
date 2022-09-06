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
    # file = read_json("./data/books.json")
    file  = File.read("./data/books.json")
    JSON.parse(file).each do |book|
      @books.push(Book.new(book["title"], book["author"]))
    end
  end
end
