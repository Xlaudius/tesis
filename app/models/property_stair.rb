class PropertyStair < ApplicationRecord
  belongs_to :property
  belongs_to :stair
  belongs_to :quality

  validates :property_id, :stair_id, :quality_id, presence: true
  validates :property_id, :stair_id, :quality_id, numericality:{ greater_than: 0 }
end
