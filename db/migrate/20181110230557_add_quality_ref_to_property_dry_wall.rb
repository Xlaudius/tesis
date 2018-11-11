class AddQualityRefToPropertyDryWall < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_dry_walls, :quality, foreign_key: true
  end
end
