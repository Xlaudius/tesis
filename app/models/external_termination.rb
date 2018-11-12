class ExternalTermination < ApplicationRecord
    has_many :property_extern_terminations
    has_many :qualities, through: :property_extern_terminations

    validates :name, :value ,presence: true
    validates :value, numericality: { greater_than: 0 }

end
