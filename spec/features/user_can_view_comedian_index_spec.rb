require 'rails_helper'

RSpec.describe 'User visits the comedians show page' do
  it 'Shows a list of comdians' do
    com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
    com_2 = Comedian.create(name: "andrew", city: "town wown", age: 43, thumbnail: "steve.jpg")
    com_3 = Comedian.create(name: "harvey", city: "town pown", age: 23, thumbnail: "steve.jpg")

    visit comedians_path

    within ".comedian-#{com_1.id}" do
      expect(page).to have_content("Name: steve")
      expect(page).to have_content("Age: 54")
      expect(page).to have_content("City: town town")
    end

    within ".comedian-#{com_2.id}" do
      expect(page).to have_content("Name: andrew")
      expect(page).to have_content("Age: 43")
      expect(page).to have_content("City: town wown")
    end

    within ".comedian-#{com_3.id}" do
      expect(page).to have_content("Name: harvey")
      expect(page).to have_content("Age: 23")
      expect(page).to have_content("City: town pown")
    end
  end
end
