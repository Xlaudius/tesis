class AddQualityRefToPropertyDoor < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_doors, :quality, foreign_key: true
  end
end
