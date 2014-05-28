class AddUserIdToPinners < ActiveRecord::Migration
  def change
    add_column :pinners, :user_id, :integer
    add_index :pinners, :user_id
  end
end
