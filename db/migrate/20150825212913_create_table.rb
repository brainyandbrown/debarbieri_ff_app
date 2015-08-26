class CreateTable < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :names
      t.string :position
      t.integer :byes
      t.string :rankings
      t.string :teams
      t.integer :weather
    end
  end
end
