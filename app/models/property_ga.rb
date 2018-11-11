class PropertyGa < ApplicationRecord
  belongs_to :property
  belongs_to :ga, optional: true
  belongs_to :quality

end
