class CreateUserIdForPosts < ActiveRecord::Migration[5.2]
  def up
  	add_column :user_id
  end
end
