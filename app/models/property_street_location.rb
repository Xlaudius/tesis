class PropertyStreetLocation < ApplicationRecord
  belongs_to :property
  belongs_to :street_location
end
