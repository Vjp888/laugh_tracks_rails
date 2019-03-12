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
end
