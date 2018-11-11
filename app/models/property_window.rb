class PropertyWindow < ApplicationRecord
  belongs_to :window
  belongs_to :property
  belongs_to :quality
end
