class CreateCars < ActiveRecord::Migration[7.2]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
