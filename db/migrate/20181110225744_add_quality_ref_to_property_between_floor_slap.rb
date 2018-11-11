class AddQualityRefToPropertyBetweenFloorSlap < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_between_floor_slaps, :quality, foreign_key: true
  end
end
