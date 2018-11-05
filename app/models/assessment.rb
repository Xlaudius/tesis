class Assessment < ApplicationRecord
  belongs_to :state
  belongs_to :client
  belongs_to :owner
  has_many :properties
end
