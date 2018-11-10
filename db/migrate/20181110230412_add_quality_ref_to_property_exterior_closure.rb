class AddQualityRefToPropertyExteriorClosure < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_exterior_closures, :quality, foreign_key: true
  end
end
