class AddQualityRefToPropertyStructure < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_structures, :quality, foreign_key: true
  end
end
