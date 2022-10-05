require_relative 'student'
require_relative 'classroom'

# test class classroom
describe Classroom do
  describe '#add_student' do
    it 'adds a student to the classroom' do
      classroom = Classroom.new('Math')
      student = Student.new(10, 'John', 5)
      classroom.add_student(student)
      expect(classroom.students).to include(student)
    end
  end
end
