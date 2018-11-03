class CreateDrinkingWaters < ActiveRecord::Migration[5.2]
  def change
    create_table :drinking_waters do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
