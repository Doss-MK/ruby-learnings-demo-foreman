class AddTypeColumnWorker < ActiveRecord::Migration[7.1]
  def change
    add_column :workers, :type, :string
  end
end
