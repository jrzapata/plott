class AddUserIdColumn < ActiveRecord::Migration
  def change
    add_column :vendors, :user_id, :integer
  end
end
