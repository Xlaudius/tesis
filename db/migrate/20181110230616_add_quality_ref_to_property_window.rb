class AddQualityRefToPropertyWindow < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_windows, :quality, foreign_key: true
  end
end
