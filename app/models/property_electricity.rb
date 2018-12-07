class PropertyElectricity < ApplicationRecord
  belongs_to :electricity
  belongs_to :property

 # validates :electricity_id, :property_id, presence: true
 # validates :electricity_id, :property_id, numericality:{ greater_than: 0 }

end
