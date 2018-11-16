class PropertySecCharacteristic < ApplicationRecord
  belongs_to :property
  belongs_to :sector_characteristic

  validates :property_id, :sector_characteristic_id, presence: true
  validates :property_id, :sector_characteristic_id, numericality:{ greater_than: 0 }
end
