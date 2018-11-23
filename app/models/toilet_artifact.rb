class ToiletArtifact < ApplicationRecord
	has_many :property_toilet_artifacts
	has_many :qualities, through: :property_toilet_artifacts

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
