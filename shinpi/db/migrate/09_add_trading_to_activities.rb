class AddTradingToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :trading, :boolean, default: false
  end
end
