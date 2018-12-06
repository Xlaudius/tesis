class PropertySewerage < ApplicationRecord
  belongs_to :sewerage
  belongs_to :property
  belongs_to :quality

#  validates :sewerage_id, :property_id, :quality_id, presence: true
#  validates :sewerage_id, :property_id, :quality_id, numericality:{ greater_than: 0 }
end
