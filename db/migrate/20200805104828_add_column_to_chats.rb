class AddColumnToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :room_id, :integer
    add_column :user_rooms, :room_id, :integer
  end
end
