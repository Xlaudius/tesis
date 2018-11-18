class Assessment < ApplicationRecord
  belongs_to :state
  belongs_to :client
  belongs_to :owner
  has_many :properties
  
  validates :state_id, :location, :habitant, :client_id, :owner_id, presence: true
  validates :number_assesment, :client_id, :owner_id, numericality: { greater_than: 0 }
  validates :inhabited, inclusion: { in: [true, false] }

end
