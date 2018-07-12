class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :avatar
      t.integer :product_id

      t.timestamps
    end
  end
end
