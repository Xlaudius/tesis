class PropertyHeating < ApplicationRecord
  belongs_to :heating
  belongs_to :property
  belongs_to :quality
end
