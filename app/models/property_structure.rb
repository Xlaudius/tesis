class PropertyStructure < ApplicationRecord
  belongs_to :property
  belongs_to :structure
  belongs_to :quality
end
