class CreateOranges < ActiveRecord::Migration
  def self.up
    create_table :oranges do |t|
      t.string :blueberry
      t.integer :cherry
      t.decimal :latitude,  :precision => 7, :scale => 5
      t.decimal :longitude, :precision => 8, :scale => 5
      t.decimal :elevation, :precision => 5, :scale => 1
      t.timestamps
    end
  end

  def self.down
    drop_table :oranges
  end
end
