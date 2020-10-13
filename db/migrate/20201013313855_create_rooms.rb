class CreateRooms < ActiveRecord::Migration[6.0]
    def change
      # drop_table :rooms
      create_table :rooms do |t|
        t.string :name
  
        t.timestamps
      end
    end
  end
  