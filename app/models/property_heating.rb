class PropertyHeating < ApplicationRecord
  belongs_to :heating
  belongs_to :property
end
