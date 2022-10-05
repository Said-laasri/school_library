require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name = 'Unknown', classroom = 5, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

# test class student
describe Student do
  describe '#classroom' do
    it 'returns the classroom of the student' do
      student = Student.new(10, 'John', 5)
      expect(student.classroom).to eq(5)
    end
  end
end
