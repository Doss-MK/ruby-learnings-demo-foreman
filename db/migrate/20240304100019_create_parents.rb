class CreateParents < ActiveRecord::Migration[7.1]
  def change
    create_table :parents do |t|
      t.string :fname
      t.string :mname
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
