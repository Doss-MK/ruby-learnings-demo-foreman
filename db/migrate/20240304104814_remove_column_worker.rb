class RemoveColumnWorker < ActiveRecord::Migration[7.1]
  def change
    remove_column :workers, :type
  end
end
