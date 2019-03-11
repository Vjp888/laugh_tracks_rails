class CreateSpecials < ActiveRecord::Migration[5.1]
  def change
    create_table :specials do |t|
      t.string "title"
      t.integer "length"
      t.string "thumbnail"

      t.timestamps
    end
  end
end
