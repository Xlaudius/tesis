class PropertyShed < ApplicationRecord
  belongs_to :shed
  belongs_to :property
  belongs_to :shed_material
end
