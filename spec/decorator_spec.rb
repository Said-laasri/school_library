# test class person
require_relative '../nameable'
require_relative '../decorator'
require_relative '../person'

# test class decoratior
describe Decorator do
  describe '#new' do
    context 'when given valid parameters' do
      # test
      it 'returns a Decorator object' do
        # test code
        decorator = Decorator.new('John Doe')
        expect(decorator).to be_an_instance_of(Decorator)
      end
      it 'returns a Decorator object' do
        # test code
        person = Person.new(22, 'rex')
        decorator = Decorator.new(person)
        expect(decorator.correct_name).to eql 'rex'
      end
    end
  end
end
