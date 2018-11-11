class PropertyExteriorClosure < ApplicationRecord
  belongs_to :property
  belongs_to :exterior_closure
  belongs_to :quality
  
end
