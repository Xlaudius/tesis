class AddQualityRefToPropertySewerage < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_sewerages, :quality, foreign_key: true
  end
end
