class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.string :address
      t.string :img_url
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
