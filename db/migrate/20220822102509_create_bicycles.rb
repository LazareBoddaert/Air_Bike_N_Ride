class CreateBicycles < ActiveRecord::Migration[7.0]
  def change
    create_table :bicycles do |t|
      t.string :title
      t.string :category
      t.text :description
      t.float :price_per_day
      t.integer :size
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
