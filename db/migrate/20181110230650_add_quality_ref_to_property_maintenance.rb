class AddQualityRefToPropertyMaintenance < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_maintenances, :quality, foreign_key: true
  end
end
