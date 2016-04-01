class AddingColumnsToSpotsTable < ActiveRecord::Migration
  def change
    add_column :spots, :latitude, :float
  end
end
