class Window < ApplicationRecord
	has_many :property_windows
	has_many :qualities, through: :property_windows

end
