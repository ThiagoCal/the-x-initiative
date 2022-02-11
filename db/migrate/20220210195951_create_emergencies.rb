class CreateEmergencies < ActiveRecord::Migration[6.0]
  def change
    create_table :emergencies do |t|
      t.string :location
      t.boolean :solved, :default => false
      t.timestamps null: false
    end
  end
end
