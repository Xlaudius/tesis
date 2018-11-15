class PropertyHeating < ApplicationRecord
  belongs_to :heating
  belongs_to :property
  belongs_to :quality

  validates :heating_id, :property_id, :quality_id, presence: true
  validates :heating_id, :property_id, :quality_id, numericality:{ greater_than: 0 }

end
