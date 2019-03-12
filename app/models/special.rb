class Special < ApplicationRecord
  belongs_to :comedian

  validates_presence_of :title, :length, :comedian_id, :thumbnail
end
