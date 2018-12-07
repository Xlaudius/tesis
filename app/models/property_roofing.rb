class PropertyRoofing < ApplicationRecord
  belongs_to :property
  belongs_to :roofing
  belongs_to :quality

 # validates :property_id, :roofing_id, :quality_id, presence: true
 # validates :property_id, :roofing_id, :quality_id, numericality:{ greater_than: 0 }

end
