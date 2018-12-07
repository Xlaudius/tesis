class PropertySidewalk < ApplicationRecord
  belongs_to :sidewalk, optional: true #SideWalk must exist
  belongs_to :property

#  validates :side_walk_id, :property_id, :width, presence: true
#  validates :side_walk_id, :property_id, :width, numericality:{ greater_than: 0 }
end
