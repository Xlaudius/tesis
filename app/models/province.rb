class Province < ApplicationRecord
  belongs_to :city
  has_many :property_rols

  validates :name, :city_id, presence: true
  validates :city_id, numericality:{ greater_than: 0 }
end
