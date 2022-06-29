require_relative 'person'

class Teacher < Person
  def initialize(name, age, specialization, parent_permission = true)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  private

  def can_use_services?
    true
  end
end

teacher = Teacher.new('Peter', 31, 'science')
p teacher
