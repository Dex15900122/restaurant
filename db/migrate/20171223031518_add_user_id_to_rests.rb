class AddUserIdToRests < ActiveRecord::Migration[5.1]
  def change
   add_column :rests, :user_id, :string
   end
end
