class AddColumnToSpot < ActiveRecord::Migration
  def change
    add_attachment :spots, :image
  end
end
