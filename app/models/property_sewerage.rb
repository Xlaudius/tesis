class PropertySewerage < ApplicationRecord
  belongs_to :sewerage
  belongs_to :property
  belongs_to :quality
end
