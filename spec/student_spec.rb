require_relative '../person'
require_relative '../student'

# test class student
describe Student do
  describe '#classroom' do
    it 'returns the classroom of the student' do
      student = Student.new(10, 'John', 5)
      expect(student.classroom).to eq(5)
    end
    it 'returns the classroom of the student' do
      student = Student.new(10, 'John', 5)
      expect(student.play_hooky).to eq "¯\(ツ)/¯"
    end
    it 'returns the classroom of the student' do
      student = Student.new(15, 'John', parent_permission:false)
      expect(student.can_use_services?).to be false
    end
  end
end
