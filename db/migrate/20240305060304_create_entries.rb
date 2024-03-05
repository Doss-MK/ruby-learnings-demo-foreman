class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.string :entryable_type
      t.integer :entryable_id

      t.timestamps
    end
  end
end
