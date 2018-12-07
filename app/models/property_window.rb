class PropertyWindow < ApplicationRecord
  belongs_to :window
  belongs_to :property
  belongs_to :quality

#  validates :window_id, :property_id, :protections, :quality_id, presence: true
#  validates :window_id, :property_id, :protections, :quality_id, numericality:{ greater_than: 0 }
end
