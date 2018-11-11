class PropertyDoor < ApplicationRecord
  belongs_to :door
  belongs_to :door_frame
  belongs_to :property
  belongs_to :quality
end
