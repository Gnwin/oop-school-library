require_relative '../lib/app.rb'
require_relative '../data/storage'

RSpec.describe App do
  context 'Testing student class' do
    before :each do
      @app = App.new
      @store = Store.new
      @booksdata = @store.read('books', './data/books.json')
      @booksdata = [] if @booksdata.nil?
      @booksdata = @booksdata.map do |book|
        Book.new(book['title'], book['author'])
      end
    end

    it 'returns instance of student' do
      expect(@app).to be_instance_of(App)
    end

    it 'returns an array' do
      expect(@app.books).to be_instance_of(Array)
    end

    it 'returns an array' do
      expect(@app.rentals).to be_instance_of(Array)
    end
  end
end