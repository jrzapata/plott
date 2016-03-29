class AddSpotTable < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :address
      t.integer :zipcode
      t.boolean :available
      t.integer :price
    end
  end
end
