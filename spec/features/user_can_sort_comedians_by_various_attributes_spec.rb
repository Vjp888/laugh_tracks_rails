require 'rails_helper'

RSpec.describe 'A user sorts the comedians page', type: :feature do

  describe 'sorting by cities' do
   it 'shows links for individual cities' do
     com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
     com_2 = Comedian.create(name: "andrew", city: "town wown", age: 43, thumbnail: "steve.jpg")
     com_3 = Comedian.create(name: "mark", city: "wonder bread", age: 43, thumbnail: 'steve.jpg')

     Special.create(title: "the stevshow", length: 300, thumbnail: "steve.jpg", comedian_id: com_1.id)
     Special.create(title: "the second show", length: 600, thumbnail: "steve.jpg", comedian_id: com_1.id)

     Special.create(title: "the mark show", length: 300, thumbnail: "steve.jpg", comedian_id: com_3.id)
     Special.create(title: "the forth show", length: 600, thumbnail: "steve.jpg", comedian_id: com_3.id)

     Special.create(title: "the fifth show", length: 400, thumbnail: "steve.jpg", comedian_id: com_2.id)
     Special.create(title: "the sixth show", length: 800, thumbnail: "steve.jpg", comedian_id: com_2.id)

     visit comedians_path

     within '.hometowns' do
       expect(page).to have_link("wonder bread")
       expect(page).to have_link("town wown")
       expect(page).to have_link("town town")

      click_link "wonder bread"
     end

     expect(page).to_not have_content("Name: steve")
     expect(page).to_not have_content("Name: andrew")
     expect(page).to_not have_content("town town")
     expect(page).to_not have_content("town wown")
     expect(page).to have_content("Name: mark")
   end
  end

  it 'can sort by age' do
    com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
    com_2 = Comedian.create(name: "andrew", city: "town wown", age: 43, thumbnail: "steve.jpg")
    com_3 = Comedian.create(name: "mark", city: "wonder bread", age: 43, thumbnail: 'steve.jpg')

    Special.create(title: "the stevshow", length: 300, thumbnail: "steve.jpg", comedian_id: com_1.id)
    Special.create(title: "the second show", length: 600, thumbnail: "steve.jpg", comedian_id: com_1.id)

    Special.create(title: "the mark show", length: 300, thumbnail: "steve.jpg", comedian_id: com_3.id)
    Special.create(title: "the forth show", length: 600, thumbnail: "steve.jpg", comedian_id: com_3.id)

    Special.create(title: "the fifth show", length: 400, thumbnail: "steve.jpg", comedian_id: com_2.id)
    Special.create(title: "the sixth show", length: 800, thumbnail: "steve.jpg", comedian_id: com_2.id)

    visit comedians_path

    within ".comedian-#{com_1.id}" do
      click_link '54'
    end

    expect(page).to_not have_content("Name: andrew")
    expect(page).to_not have_content("Name: mark")
    expect(page).to have_content("Name: steve")
  end
end
