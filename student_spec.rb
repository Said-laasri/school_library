require_relative 'person'
require_relative 'student'

# test class student
describe Student do
  describe '#classroom' do
    it 'returns the classroom of the student' do
      student = Student.new(10, 'John', 5)
      expect(student.classroom).to eq(5)
    end
  end
end
