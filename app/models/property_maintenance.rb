class PropertyMaintenance < ApplicationRecord
  belongs_to :maintenance
  belongs_to :property
end
