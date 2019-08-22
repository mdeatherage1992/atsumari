class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    t.string :name
    t.string :bio
    t.string :industry
    t.string :experience_in_industry
    t.string :github
    t.string :linkedin
    t.string :s_a
    t.timestamps
    end
  end
end
