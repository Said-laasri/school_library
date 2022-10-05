require_relative '../decorator'
require_relative '../capitalizedecorator'
require_relative '../person'

# test CapitalizeDecorator class
describe CapitalizeDecorator do
  describe '#new' do
    context 'when given valid parameters' do
      # test
      it 'returns a CapitalizeDecorator object' do
        # test code
        decorator = CapitalizeDecorator.new('John Doe')
        expect(decorator).to be_an_instance_of(CapitalizeDecorator)
      end
      it 'returns a name capitalized' do
        # test code
        person = Person.new(22, 'maximilianus')
        decorator = CapitalizeDecorator.new(person)
        expect(decorator.correct_name).to eql 'Maximilianus'
      end
    end
  end
end
