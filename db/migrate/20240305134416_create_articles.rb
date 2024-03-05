class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.boolean :published

      t.timestamps
    end
  end
end
