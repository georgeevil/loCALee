class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.decimal :longitude, :decimal, :precision => 15, :scale => 10
      t.decimal :latitude, :decimal, :precision => 15, :scale => 10
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :locations, :user_id
  end
end
