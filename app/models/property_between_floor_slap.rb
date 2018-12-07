class PropertyBetweenFloorSlap < ApplicationRecord
  belongs_to :between_floor_slap
  belongs_to :property
  belongs_to :quality

  #validates :between_floor_slap_id, :property_id, presence: true
  #validates :between_floor_slap_id, :property_id, numericality: { greater_than: 0 }

end
