class Person
  attr_accessor :id, :name, :age, :parent_permission 

  def initialize(name: "Unknown", age, parent_permission: true )
      @name = name
      @age = age
      @parent_permission = parent_permission
  end
  
  def can_use_services?
    if @age >= 18 || @parent_permission
      true
  end

  Private
  def is_of_age?
      if @age >= 18
        true
      else
        false 
      end
  end

end