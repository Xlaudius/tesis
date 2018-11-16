class PropertyCover < ApplicationRecord
  belongs_to :property
  belongs_to :cover
  belongs_to :quality

  validates :property_id, :cover_id, :quality_id, presence: true
  validates :property_id, :cover_id, :quality_id, numericality:{ greater_than: 0 }

end
