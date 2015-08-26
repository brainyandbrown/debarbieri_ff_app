class CreateByes < ActiveRecord::Migration
  def change
    create_table :byes do |t|
      t.string :bye_week
    end
  end
end
