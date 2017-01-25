class CreateSquirrels < ActiveRecord::Migration
  def change
    create_table :squirrels do |t|
      t.string :name, null: false
      t.string :color, default: "brown"
      t.integer :fluffiness
      t.boolean :can_fly, default: false

      t.timestamps
    end
  end
end
