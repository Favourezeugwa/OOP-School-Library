class Person
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Randon.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  private

  def of_age?
    if @age >= 18
      true
    elsif @age < 18
      false
    end
  end

  public

  def can_use_services?
    return unless @age >= 18 || @parent_permission == true
  end
end
