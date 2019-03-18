require 'rails_helper'

RSpec.describe 'User visit the new comedian page', type: :feature do

  describe 'When a user visits comedians/new' do

    it 'allows a user to fill out a form and make a new comedian' do
      visit new_comedian_path

      fill_in 'Name', with: 'bob'
      fill_in 'Age', with: '21'
      fill_in 'City', with: 'steve town'

      click_on 'Submit'

      comedian = Comedian.last

      expect(current_path).to eq(comedians_path)

      within ".comedian-#{comedian.id}" do
        expect(page).to have_content("Name: bob")
        expect(page).to have_content("Age: 21")
        expect(page).to have_content("City: steve town")
      end
    end

    it 'redirects a user if they submit incomplete info' do
      visit new_comedian_path

      fill_in 'Name', with: 'bob'
      fill_in 'Age', with: '21'

      click_on 'Submit'

      expect(page).to have_field("Name")
      expect(page).to have_field("Age")
      expect(page).to have_field("City")
    end
  end
end
