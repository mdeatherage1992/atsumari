class CreatePrivileges < ActiveRecord::Migration[5.2]
  def change
   create_table :privileges do |t|
     t.integer :room_id
     t.integer :user_id
     t.boolean :public, default: true
     t.boolean :owner, default: false
     t.boolean :allowed, default: false
   end
 end
end
