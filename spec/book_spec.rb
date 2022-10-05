require 'securerandom'
require_relative '../book'

# test book class
describe Book do
  describe '#new' do
    context 'when given valid parameters' do
      # test
      it 'returns a Book object' do
        # test code
        book = Book.new('John Doe', 'Test')
        expect(book).to be_an_instance_of(Book)
      end
      it 'book title and author should be correct' do
        # test code
        book = Book.new('John Doe', 'Test')
        expect(book.author).to eql 'John Doe'
        expect(book.title).to eql 'Test'
      end
    end
  end
end
