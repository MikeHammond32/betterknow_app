class RenameCustomerIdToClientId < ActiveRecord::Migration[6.0]
  def change
    rename_column :ratings, :customer_id, :client_id
  end
end
