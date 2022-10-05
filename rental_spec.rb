require_relative 'person'
require_relative 'book'
require_relative 'rental'
require_relative 'teacher'
require_relative 'student'
require 'date'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @person = person
    @book = book
    person.rentals << self
    book.rentals << self
  end
end

# test class rental
describe Rental do
  describe '#new' do
    context 'when given valid parameters' do
      it 'returns a Rental object' do
        book = Book.new('John Doe', 'Test')
        person = Person.new('John', 18)
        rental = Rental.new(Date.today, book, person)
        expect(rental).to be_an_instance_of(Rental)
      end
    end
  end
end