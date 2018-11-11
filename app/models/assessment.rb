class Assessment < ApplicationRecord
  belongs_to :state
  belongs_to :client
  belongs_to :owner
  has_many :properties

  
  validates :number_assesment, :state_id, :location, :habitant, :client_id, :owner_id, :start_date, :end_date, presence: true
  validates :number_assesment, numericality: { greater_than: 0 }
  validates :inhabited, inclusion: { in: [true, false] }
end
