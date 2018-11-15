class PropertyHousingQuality < ApplicationRecord
  belongs_to :housing_quality
  belongs_to :property

  validates :housing_quality_id, :property_id, presence: true
  validates :housing_quality_id, :property_id, numericality:{ greater_than: 0 }

end
