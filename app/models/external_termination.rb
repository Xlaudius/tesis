class ExternalTermination < ApplicationRecord
    has_many :property_extern_terminations
    has many :qualities, through: :property_extern_terminations

end
