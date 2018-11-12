class Owner < ApplicationRecord
    has_many :assessments


    validates :name, :rut ,presence: true
end
