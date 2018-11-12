class Pool < ApplicationRecord
  belongs_to :property

  validates :img, :volumen, :property_id ,presence: true
  validates :property_id, :volumen, numericality: { greater_than: 0 }
end
