class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.decimal :price

      t.timestamps
    end
  end
end