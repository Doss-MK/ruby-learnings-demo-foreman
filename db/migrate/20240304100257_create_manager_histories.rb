class CreateManagerHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :manager_histories do |t|
      t.string :exp
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
