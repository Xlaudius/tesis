class PropertySidewalk < ApplicationRecord
  belongs_to :sidewalk, optional: true #SideWalk must exist
  belongs_to :property
end
