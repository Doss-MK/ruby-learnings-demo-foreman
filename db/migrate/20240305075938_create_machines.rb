class CreateMachines < ActiveRecord::Migration[7.1]
  def change
    create_table :machines do |t|
      t.string :name
      t.integer :available_quantity
      t.integer :lock_version

      t.timestamps
    end
  end
end
