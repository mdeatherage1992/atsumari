class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
   create_table :profiles do |t|
     t.string :bio
     t.integer :experience_in_industry
     t.string :industry
     t.integer :total_spectators
     t.decimal :total_confirmed_revenue
     t.string :github
     t.string :linkedin
     t.string :seeking_alpha
     t.string :website
   end
 end
end
