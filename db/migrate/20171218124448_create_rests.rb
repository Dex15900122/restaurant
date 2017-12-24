class CreateRests < ActiveRecord::Migration[5.1]
  def change
    create_table :rests do |t|
      t.string :name
      t.text :description
      t.integer :seat
      t.integer :minimum_order
      t.integer :phone
      t.integer :dining_time
      t.integer :open_time
      t.integer :close_time
      t.string :photo
      t.timestamps
    end

    
  end
end
