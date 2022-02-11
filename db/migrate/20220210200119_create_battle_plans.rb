class CreateBattlePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :battle_plans do |t|
      t.string :name
      t.references :squad, foreign_key: true
      t.references :emergency, foreign_key: true
      t.timestamps null: false
    end
  end
end
