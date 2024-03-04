class AddColumnsToClients < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :active, :integer
  end
end
