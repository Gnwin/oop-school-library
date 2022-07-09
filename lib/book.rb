require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals, :person

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @person = nil
  end

  def to_hash
    { title: @title, author: @author, rentals: @rentals, person: @person }
  end
end
