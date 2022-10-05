require_relative 'person'
require_relative 'teacher'

# test class teacher

describe Teacher do
  describe '#new' do
    context 'when given valid parameters' do
      it 'returns a teacher object' do
        teacher = Teacher.new(18, 'John Doe')
        expect(teacher).to be_an_instance_of(Teacher)
      end
    end
  end
end
