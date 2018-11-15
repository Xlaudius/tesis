class PropertyExteriorClosure < ApplicationRecord
  belongs_to :property
  belongs_to :exterior_closure
  belongs_to :quality
  
  validates :property_id, :exterior_closure_id, :quality_id, presence: true
  validates :property_id, :exterior_closure_id, :quality_id, numericality:{ greater_than: 0 }

end
