class PropertyDryWall < ApplicationRecord
  belongs_to :dry_wall
  belongs_to :property
  belongs_to :quality

  validates :dry_wall_id, :property_id, :quality_id, presence: true
  validates :dry_wall_id, :property_id, :quality_id, numericality:{ greater_than: 0 }

end