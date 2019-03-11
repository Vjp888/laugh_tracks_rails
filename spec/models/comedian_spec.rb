require 'rails_helper'

RSpec.describe Comedian, type: :model do

  describe 'Validations' do

  end

  describe 'Relationships' do
    it {should have_many :specials}
  end
end
