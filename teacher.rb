require_relative 'person'

class Teacher
  attr_accessor :specialization

  def initialize(specialization)
    super(name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
