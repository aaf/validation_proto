class CreateOranges < ActiveRecord::Migration
  def self.up
    create_table :oranges do |t|
      t.string :blueberry
      t.integer :cherry

      t.timestamps
    end
  end

  def self.down
    drop_table :oranges
  end
end
