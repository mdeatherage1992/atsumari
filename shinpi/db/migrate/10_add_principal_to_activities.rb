class AddPrincipalToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :principal, :string
  end
end
