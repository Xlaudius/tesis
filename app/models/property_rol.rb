class PropertyRol < ApplicationRecord
  belongs_to :province
  belongs_to :property

  validates :block, :predial, :province_id, :property_id, presence: true
  validates :block, :predial, :province_id, :property_id, numericality:{ greater_than: 0 }

end
