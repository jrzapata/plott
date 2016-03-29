class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.belongs_to :vendor, index: true
      t.belongs_to :customer, index: true
      t.string :address
      t.integer :zipcode
      t.boolean :available
      t.integer :price
      t.text :description
    end

    create_table :customers do |t|
      t.string :make
      t.string :model
      t.string :first_name
      t.string :last_name
    end
    create_table :vendors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :num_spots
    end
  end
end
