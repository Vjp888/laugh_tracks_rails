require 'rails_helper'

RSpec.describe 'User visits the comedians show page' do
  it 'Shows a list of comdians' do
    com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
    com_2 = Comedian.create(name: "andrew", city: "town wown", age: 43, thumbnail: "steve.jpg")
    com_3 = Comedian.create(name: "harvey", city: "town pown", age: 23, thumbnail: "steve.jpg")

    visit comedians_path

    within ".comedian-#{com_1.id}" do
      # expect(page).to expect(page).to have_xpath("//img[@src='steve.jpg']")
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

  it 'shows the specials of a comdian as well' do
    com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
    com_2 = Comedian.create(name: "andrew", city: "town wown", age: 43, thumbnail: "steve.jpg")

    spec_1 =Special.create(title: "the stevshow", length: 500, thumbnail: "steve.jpg", comedian_id: com_1.id)
    spec_2 =Special.create(title: "the second show", length: 500, thumbnail: "steve.jpg", comedian_id: com_1.id)

    spec_4 =Special.create(title: "the fifth show", length: 500, thumbnail: "steve.jpg", comedian_id: com_2.id)
    spec_5 =Special.create(title: "the sixth show", length: 600, thumbnail: "steve.jpg", comedian_id: com_2.id)

    visit comedians_path

    within ".comedian-#{com_1.id}" do
      expect(page).to have_content("Specials:")
      within ".special-#{spec_1.id}" do
        expect(page).to have_content("the stevshow")
        expect(page).to have_content("Runtime: 500")
        # expect(page).to expect(page).to have_xpath("//img[@src='steve.jpg']")
      end
      within ".special-#{spec_2.id}" do
        expect(page).to have_content("the second show")
        expect(page).to have_content("Runtime: 500")
        # expect(page).to expect(page).to have_xpath("//img[@src='steve.jpg']")
      end
    end

    within ".comedian-#{com_2.id}" do
      expect(page).to have_content("Specials:")
      within ".special-#{spec_4.id}" do
        expect(page).to have_content("the fifth show")
        expect(page).to have_content("Runtime: 500")
        # expect(page).to expect(page).to have_xpath("//img[@src='steve.jpg']")
      end
      within ".special-#{spec_5.id}" do
        expect(page).to have_content("the sixth show")
        expect(page).to have_content("Runtime: 600")
        # expect(page).to expect(page).to have_xpath("//img[@src='steve.jpg']")
      end
    end
  end

  it 'shows information about statistics' do
    com_1 = Comedian.create(name: "steve", city: "town town", age: 54, thumbnail: "steve.jpg")
    com_2 = Comedian.create(name: "andrew", city: "town wown", age: 43, thumbnail: "steve.jpg")

    Special.create(title: "the stevshow", length: 300, thumbnail: "steve.jpg", comedian_id: com_1.id)
    Special.create(title: "the second show", length: 600, thumbnail: "steve.jpg", comedian_id: com_1.id)

    Special.create(title: "the fifth show", length: 400, thumbnail: "steve.jpg", comedian_id: com_2.id)
    Special.create(title: "the sixth show", length: 800, thumbnail: "steve.jpg", comedian_id: com_2.id)


    visit comedians_path

    within '.statistics' do
      expect(page).to have_content("Average Comedian Age: 48.5")
      expect(page).to have_content("Average Special Runtime: 525")
    end
    within '.hometowns' do
      expect(page).to have_content("town town")
      expect(page).to have_content("town wown")
    end
  end
end
