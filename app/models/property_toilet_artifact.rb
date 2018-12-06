class PropertyToiletArtifact < ApplicationRecord
  belongs_to :property
  belongs_to :toilet_artifact
  belongs_to :quality

 # validates :property_id, :toilet_artifact_id, :quality_id, presence: true
 # validates :property_id, :toilet_artifact_id, :quality_id, numericality:{ greater_than: 0 }  
end
