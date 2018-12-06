class PropertyInteriorClosure < ApplicationRecord
  belongs_to :property
  belongs_to :interior_closure

 # validates :property_id, :interior_closure_id, presence: true
 # validates :property_id, :interior_closure_id, numericality:{ greater_than: 0 }

end
