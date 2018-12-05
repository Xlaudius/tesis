
class Assessment < ApplicationRecord
  belongs_to :state
  belongs_to :client
  belongs_to :owner
  
  has_many :properties
  accepts_nested_attributes_for :properties, reject_if: :all_blank
  
  validates :state_id, :location, :habitant, :client_id, :owner_id, :start_date, :end_date, presence: true
  validates :number_assesment, :client_id, :owner_id, numericality: { greater_than: 0 }
  validates :number_assesment, uniqueness: true
  validates :inhabited, inclusion: { in: [true, false] }
end