class AddImageToPlaceImages < ActiveRecord::Migration
  def change
    add_column :place_images, :image, :string
  end
end
