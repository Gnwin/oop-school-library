require 'securerandom'
require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(name, age, parent_permission = true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  private

  def is_of_age?
    @age >= 18
  end

  public

  def can_use_services?
    is_of_age? || parent_permission
  end
end
