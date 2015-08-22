class CreatePlaceImages < ActiveRecord::Migration
  def change
    create_table :place_images do |t|
      t.references :place, index: true, foreign_key: true
      t.integer :role
    end
  end
end
