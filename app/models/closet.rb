class Closet < ApplicationRecord
    has_many :property_closets
    has_many :qualities, through: :property_closets
end
