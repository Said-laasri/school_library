require_relative 'nameable'
require 'securerandom'

class Person < Nameable
  attr_accessor :id, :name, :age, :parent_permission
  attr_reader :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? >= 18 || @parent_permission
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end

# test class person
describe Person do
  describe '#new' do
    context 'when given valid parameters' do
      # test
      it 'returns a person object' do
        # test code
        person = Person.new(18, 'John Doe')
        expect(person).to be_an_instance_of(Person)
      end
    end
  end
end
