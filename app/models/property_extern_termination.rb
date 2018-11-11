class PropertyExternTermination < ApplicationRecord
  belongs_to :property
  belongs_to :external_termination
  belongs_to :quality
end
