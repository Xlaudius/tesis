class PropertyCover < ApplicationRecord
  belongs_to :property
  belongs_to :cover
  belongs_to :quality
end
