require_relative '../lib/teacher'
require_relative '../lib/person'

RSpec.describe Teacher do
  context 'Testing teacher class' do
    before :each do
      @teacher = Teacher.new('Godwin', 34, 'science')
    end

    it 'returns instance of teacher' do
      expect(@teacher).to be_instance_of(Teacher)
    end

    it 'has name' do
      expect(@teacher.name).to eq 'Godwin'
    end

    it 'has age' do
      expect(@teacher.age).to eq 34
    end

    it 'has specialization' do
      expect(@teacher.specialization).to eq 'science'
    end
  end
end
