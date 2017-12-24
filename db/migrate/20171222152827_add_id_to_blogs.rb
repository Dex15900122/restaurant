class AddIdToBlogs < ActiveRecord::Migration[5.1]
  def change
  end

  add_index :blogs, :user_id
  add_index :blogs, :resturant_id
end
