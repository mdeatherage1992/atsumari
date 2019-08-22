class AddPriceToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :price, :decimal
  end
end
