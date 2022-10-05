require_relative 'decorator'
require_relative 'capitalizedecorator'

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
    end
  end
end
