class PropertyToiletArtifact < ApplicationRecord
  belongs_to :property
  belongs_to :toilet_artifact
  belongs_to :quality
end
