require_relative '../decorator'
require_relative '../trimmerdecorator'
require_relative '../person'

# test trimmerdecorator class
describe TrimmerDecorator do
  describe '#new' do
    context 'when given valid parameters' do
      # test
      it 'returns a TrimmerDecorator object' do
        # test code
        decorator = TrimmerDecorator.new('John Doe')
        expect(decorator).to be_an_instance_of(TrimmerDecorator)
      end
      it 'returns a name capitalized' do
        # test code
        person = Person.new(22, 'maximilianus')
        decorator = TrimmerDecorator.new(person)
        expect(decorator.correct_name).to eql "maximilian"
      end
    end
  end
end
