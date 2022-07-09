require_relative '../lib/classroom'

RSpec.describe Classroom do
  context 'Testing classroom class' do
    before :each do
      @classroom = Classroom.new(251)
    end

    it 'returns an instance of classroom' do
      expect(@classroom).to be_instance_of(Classroom)
    end

    it 'has label' do
      expect(@classroom.label).to eq 251
    end
  end
end
