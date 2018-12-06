class PropertyDoor < ApplicationRecord
  belongs_to :door
  belongs_to :door_frame
  belongs_to :property
  belongs_to :quality

#  validates :door_id, :door_frame_id, :property_id, :quality_id, presence: true
#  validates :door_id, :door_frame_id, :property_id, :quality_id, numericality:{ greater_than: 0 }
end
