class EmployeesTasks < ActiveRecord::Migration[7.1]
  def change
    create_join_table :employees, :tasks
  end
end
