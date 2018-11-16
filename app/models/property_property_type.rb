class PropertyPropertyType < ApplicationRecord
  belongs_to :property_type
  belongs_to :property

  validates :property_type_id, :property_id, :sites, presence: true
  validates :property_type_id, :property_id, :sites, numericality:{ greater_than: 0 }

end
