require_relative 'student'

class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end

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
