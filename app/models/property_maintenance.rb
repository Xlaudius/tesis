class PropertyMaintenance < ApplicationRecord
  belongs_to :maintenance
  belongs_to :property
  belongs_to :quality


 # validates :maintenance_id, :property_id, :quality_id, presence: true
 # validates :maintenance_id, :property_id, :quality_id, numericality:{ greater_than: 0 }

end
