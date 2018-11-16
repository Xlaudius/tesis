class PropertyStreetLocation < ApplicationRecord
  belongs_to :property
  belongs_to :street_location

  validates :property_id, :street_location_id, presence: true
  validates :property_id, :street_location_id,numericality:{ greater_than: 0 }
end
