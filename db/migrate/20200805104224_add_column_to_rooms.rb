class AddColumnToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :user_id, :integer
    add_column :chats, :user_id, :integer
    add_column :user_rooms, :user_id, :integer
  end
end
