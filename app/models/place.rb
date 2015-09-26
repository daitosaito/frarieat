class Place < ActiveRecord::Base
  has_many :place_images
  has_many :place_users
  has_many :users, through: :place_users
end
