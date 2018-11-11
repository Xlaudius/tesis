class AddQualityRefToPropertyStairs < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_stairs, :quality, foreign_key: true
  end
end
