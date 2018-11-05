class PropertyHousingQuality < ApplicationRecord
  belongs_to :housing_quality
  belongs_to :property
end
