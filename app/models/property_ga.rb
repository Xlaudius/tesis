class PropertyGa < ApplicationRecord
  belongs_to :property
  belongs_to :ga, optional: true
end
