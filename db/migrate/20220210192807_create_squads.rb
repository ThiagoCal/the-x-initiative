class CreateSquads < ActiveRecord::Migration[6.0]
  def change
    create_table :squads do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
