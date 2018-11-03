class CreatePropertyStairs < ActiveRecord::Migration[5.2]
  def change
    create_table :property_stairs do |t|
      t.references :property, foreign_key: true
      t.references :stair, foreign_key: true

      t.timestamps
    end
  end
end
