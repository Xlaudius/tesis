class Quality < ApplicationRecord
	has_many :property_toilet_artifacts
	has_many :toilet_artifacts, through: :property_toilet_artifacts

end
