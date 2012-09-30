class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :text
      t.references :user
      t.references :location

      t.timestamps
    end
    add_index :posts, :user_id
    add_index :posts, :location_id
  end
end
