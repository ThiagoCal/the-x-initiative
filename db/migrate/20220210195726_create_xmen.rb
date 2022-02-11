class CreateXmen < ActiveRecord::Migration[6.0]
  def change
    create_table :xmen do |t|
      t.string :name
      t.string :power
      t.string :gender
      t.integer :age
      t.references :squad, foreign_key: true
      t.timestamps null: false
    end
  end
end
