class City < ApplicationRecord
  belongs_to :region
  has_many :provinces

  validates :name, :region_id ,presence: true
  validates :region_id, numericality: { greater_than: 0 }
end
