class PropertyMaintenance < ApplicationRecord
  belongs_to :maintenance
  belongs_to :property
  belongs_to :quality
end
