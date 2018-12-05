class PropertyCloset < ApplicationRecord
  belongs_to :closet
  belongs_to :property

  #validates :closet_id, :property_id, :qualities_id ,presence: true
  #validates :closet_id, :property_id, :qualities_id, numericality: { greater_than: 0 }

end
