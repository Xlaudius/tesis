class PropertyLandShape < ApplicationRecord
  belongs_to :property
  belongs_to :land_shape
end
