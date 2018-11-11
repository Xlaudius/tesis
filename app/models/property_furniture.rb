class PropertyFurniture < ApplicationRecord
  belongs_to :furniture
  belongs_to :property
  belongs_to :furniture_cover
  belongs_to :quality
end
