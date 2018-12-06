class PropertyGa < ApplicationRecord
  belongs_to :property
  belongs_to :ga, optional: true
  belongs_to :quality

 # validates :property_id, :gas_id, :quality_id, presence: true
 # validates :property_id, :gas_id, :quality_id, numericality:{ greater_than: 0 }


end
