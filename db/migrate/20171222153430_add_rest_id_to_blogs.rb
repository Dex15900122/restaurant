class AddRestIdToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_index :blogs, :rest_id
  end
end
