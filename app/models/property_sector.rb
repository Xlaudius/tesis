class PropertySector < ApplicationRecord
  belongs_to :property
  belongs_to :sector

  validates :distance, :property_id, :sector_id, presence: true
  validates :distance, :property_id, :sector_id, numericality:{ greater_than: 0 }
end
