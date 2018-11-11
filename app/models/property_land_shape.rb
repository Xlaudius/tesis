class PropertyLandShape < ApplicationRecord
  belongs_to :property
  belongs_to :land_shape
  belongs_to :quality
end
