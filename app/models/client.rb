class Client < ApplicationRecord
  belongs_to :client_type
  has_many :assessments

  validates :name, :contact, :number, :available, :client_type_id, presence: true
  validates :number, :client_type_id, numericality: { greater_than: 0 }
  validates :available, inclusion: { in: [true, false] }
end
