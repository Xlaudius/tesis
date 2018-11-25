class Assessment < ApplicationRecord
  belongs_to :state
  belongs_to :client
  belongs_to :owner
  has_many :properties
  
  validates_presence_of :state_id, :location, :habitant, :client_id, :owner_id
# validates :number_assesment, numericality: { greater_than: 0 }
  validates :inhabited, inclusion: { in: [true, false] }

end
