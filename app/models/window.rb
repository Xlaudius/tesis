class Window < ApplicationRecord
	has_many :property_windows
	has_many :qualities, through: :property_windows

	validates :name, :value, presence: true
	validates :value, numericality:{ greater_than: 0 }
end
