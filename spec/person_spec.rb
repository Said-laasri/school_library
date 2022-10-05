require_relative '../nameable'
require 'securerandom'
require_relative '../person'
require_relative '../rental'
require_relative '../book'

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
      it 'returns a person object with name set to unknown' do
        # test code
        person = Person.new(18)
        expect(person.name).to eql "Unknown"
      end
      it 'returns a person object with parent permission false' do
        # test code
        person = Person.new(15, 'Shreya', parent_permission: false)
        expect(person.parent_permission).to be false
      end
      it 'returns false for can use services with below 18 and no parent permission' do
        # test code
        person = Person.new(18, 'tanya', parent_permission: true)
        expect(person.can_use_services?).to be true
      end
      it 'returns a person object with parent permission false' do
        # test code
        person = Person.new(18, 'tanya', parent_permission: true)
        expect(person.can_use_services?).to be true
      end
      it 'add rentals for a person' do
        # test code
        person = Person.new(18, 'tanya', parent_permission: true)
        book = Book.new('title', 'author')
        rental = Rental.new('12-12-12', book, person)
        person.add_rental(rental)
        expect(person.rentals.length).to be 2
      end
    end
  end
end
