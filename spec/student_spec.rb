require_relative '../lib/student.rb'

RSpec.describe Student do
  context 'Testing student class' do
    before :each do
      @student = Student.new('Godwin', 34, "", true)
    end

    it 'returns instance of student' do
      expect(@student).to be_instance_of(Student)
    end

    it 'has name' do
      expect(@student.name).to eq 'Godwin'
    end

    it 'has age' do
      expect(@student.age).to eq 34
    end

    it 'has parent_permission' do
      expect(@student.parent_permission).to be true
    end
  end
end