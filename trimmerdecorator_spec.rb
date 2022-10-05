require_relative 'decorator'
require_relative 'trimmerdecorator'

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
    end
  end
end
