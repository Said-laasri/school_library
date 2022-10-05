require 'securerandom'

class Book
  attr_accessor :author, :title
  attr_reader :rentals, :id

  def initialize(author, title)
    @id = Random.rand(1..100)
    @author = author
    @title = title
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end
end

# test book class
describe Book do
  describe '#new' do
    context 'when given valid parameters' do
      #test
      it 'returns a Book object' do
        #test code
        book = Book.new('John Doe', 'Test')
        expect(book).to be_an_instance_of(Book)
      end
    end
  end
end
