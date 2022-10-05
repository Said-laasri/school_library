require_relative '../person'
require_relative '../book'
require_relative '../rental'
require_relative '../teacher'
require_relative '../student'
require 'date'

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
      it 'returns a Rental object' do
        book = Book.new('John Doe', 'Test')
        person = Person.new('John', 18)
        rental = Rental.new(Date.today, book, person)
        expect(rental.date).to eql Date.today
      end
    end
  end
end
