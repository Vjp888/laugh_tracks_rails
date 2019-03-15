require 'rails_helper'

RSpec.describe Special, type: :model do

  describe 'Validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :length}
    it {should validate_presence_of :comedian_id}
    it {should validate_presence_of :thumbnail}
  end

  describe 'Relationships' do
    it {should belong_to :comedian}
  end

  describe 'Class Methods' do
    describe '.average_runtime' do
      it 'averages the runtime of a all specials or special of given id' do
        com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
        com_2 = Comedian.create(name: "andrew", city: "town wown", age: 43, thumbnail: "steve.jpg")

        Special.create(title: "the stevshow", length: 300, thumbnail: "steve.jpg", comedian_id: com_1.id)
        Special.create(title: "the second show", length: 600, thumbnail: "steve.jpg", comedian_id: com_1.id)

        Special.create(title: "the fifth show", length: 400, thumbnail: "steve.jpg", comedian_id: com_2.id)
        Special.create(title: "the sixth show", length: 800, thumbnail: "steve.jpg", comedian_id: com_2.id)

        expect(Special.average_runtime).to eq(525)
        expect(Special.average_runtime(com_1.id)).to eq(450)

      end
    end
  end
end
