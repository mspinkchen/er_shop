class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string "name"
      t.string "flavor"
      t.text "description"
      t.integer "price"
      t.string "en_name"
      t.string "tag"

      t.timestamps
    end
  end
end
