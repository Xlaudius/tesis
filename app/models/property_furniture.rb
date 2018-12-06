class PropertyFurniture < ApplicationRecord
  belongs_to :furniture
  belongs_to :property
  belongs_to :furniture_cover
  belongs_to :quality

#  validates :furniture_id, :property_id, :furniture_cover_id, :quality_id, presence: true
#  validates :furniture_id, :property_id, :furniture_cover_id, :quality_id, numericality:{ greater_than: 0 }

end
