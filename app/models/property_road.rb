class PropertyRoad < ApplicationRecord
  belongs_to :property
  belongs_to :road

  validates :property_id, :road_id, presence: true
  validates :property_id, :road_id, numericality:{ greater_than: 0 }

end
