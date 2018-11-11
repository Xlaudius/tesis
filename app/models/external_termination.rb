class ExternalTermination < ApplicationRecord
    has_many :property_extern_terminations
    has_many :qualities, through: :property_extern_terminations

end
