class PropertyLandShape < ApplicationRecord
  belongs_to :property
  belongs_to :land_shape
  belongs_to :quality

#  validates :property_id, :land_shape_id, :quality_id, presence: true
#  validates :property_id, :land_shape_id, :quality_id, numericality:{ greater_than: 0 }

end
