require 'securerandom'

class Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(name, age, parent_permission = true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def is_of_age?
    @age >= 18
  end

  def can_use_services?
    is_of_age? || parent_permission
  end
end

person = Person.new('Peter', 31)
p person.parent_permission
