class AddQualityRefToPropertyGas < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_gas, :quality, foreign_key: true
  end
end
