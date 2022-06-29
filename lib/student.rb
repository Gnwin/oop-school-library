require_relative "person"

class Student < Person
  def initialize(name, age, parent_permission = true, classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end


# student = Student.new('Godwin', 31, 'ruby')
# p student
# p student.parent_permission
# p student.parent_permission = false
# p student.parent_permission
# p student.play_hooky

