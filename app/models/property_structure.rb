class PropertyStructure < ApplicationRecord
  belongs_to :property
  belongs_to :structure
  belongs_to :quality

  validates :property_id, :structure_id, :quality_id, presence: true
  validates :property_id, :structure_id, :quality_id, numericality:{ greater_than: 0 }
end
