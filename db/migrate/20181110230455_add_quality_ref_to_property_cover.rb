class AddQualityRefToPropertyCover < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_covers, :quality, foreign_key: true
  end
end
