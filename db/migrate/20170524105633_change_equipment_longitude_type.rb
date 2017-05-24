class ChangeEquipmentLongitudeType < ActiveRecord::Migration[5.1]
  def change
    change_column :equipment, :longitude, :float
  end
end
