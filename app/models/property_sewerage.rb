class PropertySewerage < ApplicationRecord
  belongs_to :sewerage
  belongs_to :property
end
