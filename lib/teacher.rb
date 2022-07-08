require_relative 'person'

class Teacher < Person
  def initialize(name, age, specialization, parent_permission = true, id = SecureRandom.uuid)
    super(name, age, parent_permission, id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_hash
    { id: @id, name: @name, age: @age, specialization: @specialization, parent_permission: parent_permission,
      class_name: 'Teacher', books: @books, rentals: @rentals }
  end

  def class_name
    'Teacher'
  end
end
