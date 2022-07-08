require_relative 'book'
require_relative 'person'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person

    p @book

    book.rentals.push(to_hash) unless book.rentals.include?(to_hash)
    person.rentals.push(to_hash) unless person.rentals.include?(to_hash)
  end

  def to_hash
    { date: @date, book: @book, person: @person }
  end
end
