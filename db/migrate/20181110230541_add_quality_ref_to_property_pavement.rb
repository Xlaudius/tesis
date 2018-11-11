class AddQualityRefToPropertyPavement < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_pavements, :quality, foreign_key: true
  end
end
