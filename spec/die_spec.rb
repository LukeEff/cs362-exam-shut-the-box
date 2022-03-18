require_relative '../lib/die'

describe 'A die' do

  let(:die) { Die.new }

  describe 'attributes' do
    it 'has number of sides' do
      expect(die).to respond_to(:number_of_sides) 
    end

    it 'it has face value' do
      expect(die).to respond_to(:face_value)
    end
  end

  describe 'number of sides' do
    it 'has six sides by default' do
      expect(die.number_of_sides).to eq(6)
    end

    it 'can be created with a custom number of sides' do
      num_sides = 4
      die = Die.new(num_sides)
      expect(die.number_of_sides).to eq(num_sides)
    end
  end

  describe 'face value' do
    it 'has a face value of 1 by default' do
      expect(die.face_value).to eq(1)
    end
  end

  describe '#to_s string representation' do
    it 'has a string representation that is of its face value' do
      expect(die.to_s).to eq(die.face_value.to_s)
    end
  end

  describe 'rolling' do
    # Don't spend time testing #roll or #random_face_value. Move on.
  end

end
