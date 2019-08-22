class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
    t.boolean :buy, default: false
    t.boolean :sell, default: false
    t.boolean :wager, default: false
    t.integer :wager_size, default: 0
    t.datetime :wager_contract_end
    t.timestamps
    end
  end
end
