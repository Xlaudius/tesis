class PropertyExternTermination < ApplicationRecord
  belongs_to :property
  belongs_to :external_termination
  belongs_to :quality

#  validates :property_id, :external_termination_id, :quality_id, presence: true
#  validates :property_id, :external_termination_id, :quality_id, numericality:{ greater_than: 0 }

end
