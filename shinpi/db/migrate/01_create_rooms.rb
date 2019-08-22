class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
    t.string :room_type
    t.string :thumbnail_text
    t.text :thumbnail_img
    t.string :name
    t.integer :head_count
    t.decimal :room_price
    t.decimal :confirmed_revenue
    t.string :description
    t.datetime :last_post
    t.string :owner_name
    t.timestamps
    end
  end
end
