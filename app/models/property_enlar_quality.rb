class PropertyEnlarQuality < ApplicationRecord
  belongs_to :enlargements_quality
  belongs_to :property

  validates :enlargements_quality_id, :property_id, presence: true
  validates :enlargements_quality_id, :property_id, numericality:{ greater_than: 0 }

end
