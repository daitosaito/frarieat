class PlaceImage < ActiveRecord::Base
  belongs_to :place
  mount_uploader :image, ImageUploader

  scope :main_pic, -> { find_by(role: 0) }
end
