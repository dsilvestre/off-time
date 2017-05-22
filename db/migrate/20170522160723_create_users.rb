class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.text :description
      t.string :email
      t.string :photo
      t.string :password

      t.timestamps
    end
  end
end
