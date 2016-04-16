class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.datetime :date
      t.boolean :published

      t.timestamps null: false
    end
      add_index :posts, :title, unique: true
      add_index :posts, :slug, unique: true
  end
end
