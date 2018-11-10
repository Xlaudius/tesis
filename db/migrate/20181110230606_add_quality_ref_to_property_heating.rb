class AddQualityRefToPropertyHeating < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_heatings, :quality, foreign_key: true
  end
end
