class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :weight
      t.string :height
      t.string :color
      t.string :stylishness

      t.timestamps null: false
    end
  end
end
