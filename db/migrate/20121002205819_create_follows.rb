class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.references :user
      t.references :location

      t.timestamps
    end
    add_index :follows, :user_id
    add_index :follows, :location_id
    add_index :follows, [:user_id, :location_id], :unique => true
  end
end
