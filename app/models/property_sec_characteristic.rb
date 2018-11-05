class PropertySecCharacteristic < ApplicationRecord
  belongs_to :property
  belongs_to :sector_characteristic
end
