class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :type
      t.string :singer

      t.timestamps
    end
  end
end
