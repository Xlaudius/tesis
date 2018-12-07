class PropertyShed < ApplicationRecord
  belongs_to :shed
  belongs_to :property
  belongs_to :shed_material
  belongs_to :quality

 # validates :shed_id, :property_id, :shed_material_id, :quality_id, presence: true
 # validates :shed_id, :property_id, :shed_material_id, :quality_id, numericality:{ greater_than: 0 }
end
