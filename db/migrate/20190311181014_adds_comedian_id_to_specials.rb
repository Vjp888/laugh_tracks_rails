class AddsComedianIdToSpecials < ActiveRecord::Migration[5.1]
  def change
    add_column :specials, :comedian_id, :integer
  end
end
