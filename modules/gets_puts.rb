module Gets
  def get_input(message)
    print "#{message}: "
    gets.chomp
  end

  def get_input_integer(message)
    print "#{message}: "
    gets.chomp.to_i
  end

  def put_label(message)
    puts message
  end
end

