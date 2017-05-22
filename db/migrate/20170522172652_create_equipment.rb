class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :title
      t.string :category
      t.integer :longitude
      t.integer :latitude
      t.integer :price
      t.string :country
      t.string :city
      t.string :postal_code
      t.string :street
      t.string :building_number
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
