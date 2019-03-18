class Special < ApplicationRecord
  belongs_to :comedian

  validates_presence_of :title, :length, :comedian_id, :thumbnail

  def self.average_runtime(ids = Comedian.all.ids)
    self.where(comedian_id: ids).average(:length).to_i
  end
end
