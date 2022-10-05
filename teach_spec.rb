require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name = 'Unknown', specialization = 'JavaScript')
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

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
