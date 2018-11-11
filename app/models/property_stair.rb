class PropertyStair < ApplicationRecord
  belongs_to :property
  belongs_to :stair
  belongs_to :quality
end
