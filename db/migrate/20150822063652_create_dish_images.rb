class CreateDishImages < ActiveRecord::Migration
  def change
    create_table :dish_images do |t|
      t.references :dish, index: true, foreign_key: true
      t.integer :role
    end
  end
end
