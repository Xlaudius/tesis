class PropertyElectricity < ApplicationRecord
  belongs_to :electricity
  belongs_to :property
end
