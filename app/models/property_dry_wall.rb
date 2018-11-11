class PropertyDryWall < ApplicationRecord
  belongs_to :dry_wall
  belongs_to :property
  belongs_to :quality
end
