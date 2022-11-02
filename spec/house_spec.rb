require './spec/spec_helper'

RSpec.describe House do
  describe 'Iteration 2' do
    let (:house1) {House.new("$400000", "123 sugar lane")}
    let (:room1) {Room.new(:bedroom, 10, '13')}
    let (:room2) {Room.new(:bedroom, 11, '15')}

    it 'exists and has readable attributes' do
      expect(house1).to be_a(House)
      # binding.pry
      expect(house1.price).to eq(400000)
      expect(house1.address).to eq("123 sugar lane")
      expect(house1.rooms).to eq([])
    end
    
    it 'can add rooms to the house' do
      house1.add_room(room1)
      house1.add_room(room2)
      expect(house1.rooms).to eq([room1, room2])
    end
  end
end

# expect().to eq()
# let (:) {}