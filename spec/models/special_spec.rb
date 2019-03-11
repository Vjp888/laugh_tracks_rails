require 'rails_helper'

RSpec.describe Special, type: :model do

  describe 'Relationships' do
    it {should belong_to :comedian}
  end
end
