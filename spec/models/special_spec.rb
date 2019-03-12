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
end
