require 'rails_helper'

RSpec.describe Comedian, type: :model do

  describe 'Validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
    it {should validate_presence_of :city}
    it {should validate_presence_of :thumbnail}
  end

  describe 'Relationships' do
    it {should have_many :specials}
  end

  describe 'class methods' do
    describe '.all_cities' do
      it 'shows all cities for a given relation' do
        com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
        com_2 = Comedian.create(name: "andrew", city: "town wown", age: 32, thumbnail: "steve.jpg")
        com_3 = Comedian.create(name: "harvey", city: "town pown", age: 32, thumbnail: "steve.jpg")

        comedians_selcted = Comedian.where(age: 32)

        comedians_cities = [com_3.city, com_1.city, com_2.city]
        comedian_cities_small = [com_3.city, com_2.city]

        expect(Comedian.all_cities).to eq(comedians_cities)
        expect(comedians_selcted.all_cities).to eq(comedian_cities_small)
      end
    end
  end
end
