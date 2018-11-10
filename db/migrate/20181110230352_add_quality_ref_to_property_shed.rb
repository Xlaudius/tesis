class AddQualityRefToPropertyShed < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_sheds, :quality, foreign_key: true
  end
end
