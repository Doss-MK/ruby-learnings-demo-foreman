class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :state
      t.string :country
      t.datetime :joined_date

      t.timestamps
    end
  end
end
