class PropertyRoofing < ApplicationRecord
  belongs_to :property
  belongs_to :roofing
  belongs_to :quality
end
