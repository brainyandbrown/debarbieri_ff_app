class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.string :ranking
    end
  end
end
