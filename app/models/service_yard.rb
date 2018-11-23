class ServiceYard < ApplicationRecord
  mount_uploaders :attachments, ImageUploader

  belongs_to :property

  #validates :img, :mts2, :property_id, presence: true
	#validates :mts2, :property_id, numericality:{ greater_than: 0 }
end
