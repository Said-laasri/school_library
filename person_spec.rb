require_relative 'nameable'
require 'securerandom'
require_relative 'person'

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
