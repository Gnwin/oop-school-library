require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(name, age, classroom, parent_permission = true, id = SecureRandom.uuid)
    super(name, age, parent_permission, id)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def add_rental(rental, book)
    book.rentals.push(rental) unless book.rentals.include?(rental)
    @rentals.push(rental)
    @books.push(book)
  end

  def to_hash
    { id: @id, name: @name, age: @age, classroom: @classroom, parent_permission: @parent_permission,
      class_name: 'Student', books: @books, rentals: @rentals }
  end

  def class_name
    'Student'
  end
end
