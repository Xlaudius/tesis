class CreatePropertySidewalks < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sidewalks do |t|
      t.references :side_walk, foreign_key: true
      t.references :property, foreign_key: true
      t.float :width

      t.timestamps
    end
  end
end
