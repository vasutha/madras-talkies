class AddUserId < ActiveRecord::Migration[5.1]
  def change
  	add_column :movies, :user_id, :integer
  end
end
