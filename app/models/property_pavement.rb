class PropertyPavement < ApplicationRecord
  belongs_to :pavement
  belongs_to :property
  belongs_to :quality

  validates :pavement_id, :property_id, :quality_id, presence: true
  validates :pavement_id, :property_id, :quality_id, numericality:{ greater_than: 0 }

end