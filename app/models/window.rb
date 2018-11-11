class Window < ApplicationRecord
	has_many :property_windows
	has many :qualities, through: :property_windows

end
