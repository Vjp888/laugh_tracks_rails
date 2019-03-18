class Comedian < ApplicationRecord
  has_many :specials

  validates_presence_of :name, :age, :city, :thumbnail

  def self.all_cities
    self.select(:city).distinct.pluck(:city)
  end
end
