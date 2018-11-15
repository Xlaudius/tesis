class PropertyDrinkingWater < ApplicationRecord
  belongs_to :drinking_water
  belongs_to :property
  belongs_to :quality

  validates :drinking_water_id, :property_id, :quality_id, presence: true
  validates :drinking_water_id, :property_id, :quality_id, numericality:{ greater_than: 0 }

end
