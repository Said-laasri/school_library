# test class person
require_relative 'nameable'
require_relative 'decorator'

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
    end
  end
end
