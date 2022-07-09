require 'securerandom'
require_relative '../lib/person.rb'
require_relative '../lib/nameable'

RSpec.describe Person do
  context 'When testing Person class' do
    before :each do
      @person = Person.new('Godwin', 27, true, id = SecureRandom.uuid)
    end

    it 'returns instance of Person' do
      expect(@person).to be_instance_of(Person)
    end

    it 'has name' do
      expect(@person.name).to eq 'Godwin'
    end

    it 'has age' do
      expect(@person.age).to eq 27
    end

    it 'has parent permission' do
      expect(@person.parent_permission).to be true
    end
  end
end