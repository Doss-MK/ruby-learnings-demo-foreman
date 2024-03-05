class AddNewColumnsToClient < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :status, :integer
  end
end
