require 'securerandom'
require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission, :rentals
  attr_reader :id

  def initialize(name, age, parent_permission = true, id = SecureRandom.uuid)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @books = []
    @rentals = []
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

  def add_rental(rental, book)
    book.rentals.push(rental.to_hash) unless book.rentals.include?(rental.to_hash)
    book.person = self
    @rentals.push(rental.to_hash)
    @books.push(book.to_hash)
  end
end
