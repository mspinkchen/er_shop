class CreateBulletins < ActiveRecord::Migration[5.1]
  def change
    create_table :bulletins do |t|
      t.string :title
      t.string :tag
      t.string :author
      t.text :body
      t.integer :category_id
      t.string :picture

      t.timestamps
    end
  end
end
