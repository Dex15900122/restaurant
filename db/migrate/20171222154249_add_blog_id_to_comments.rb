class AddBlogIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_index :comments, :blog_id
  end
end
