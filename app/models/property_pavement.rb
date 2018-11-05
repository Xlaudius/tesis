class PropertyPavement < ApplicationRecord
  belongs_to :pavement
  belongs_to :property
end
