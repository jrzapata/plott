class AddingColumnAgainToSpotsTable < ActiveRecord::Migration
  def change
    add_column :spots, :longitude, :float
  end
end
