class Client < ApplicationRecord
  belongs_to :client_type
  has_many :assessments
end
