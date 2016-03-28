class CreateCustomerandVendors < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :make
      t.string :model
    end

    create_table :vendors do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :dates
      t.integer :price
      t.text :description
    end
  end
end
