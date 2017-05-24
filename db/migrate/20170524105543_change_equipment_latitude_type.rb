class ChangeEquipmentLatitudeType < ActiveRecord::Migration[5.1]
  def change
    change_column :equipment, :latitude, :float
  end
end
