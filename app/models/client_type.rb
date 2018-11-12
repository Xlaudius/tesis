class ClientType < ApplicationRecord
    has_many :clients

    validates :name, presence: true
end
