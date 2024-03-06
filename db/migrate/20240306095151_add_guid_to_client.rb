class AddGuidToClient < ActiveRecord::Migration[7.1]
  def change
    add_column :clients, :unique_id, :bigint
  end
end
