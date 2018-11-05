class ToiletArtifact < ApplicationRecord
	has_many :property_toilet_artifacts
	has_many :qualities, through: :property_toilet_artifacts


end
