class AddQualityRefToPropertyRoofing < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_roofings, :quality, foreign_key: true
  end
end
