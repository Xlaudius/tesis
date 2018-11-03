class CreatePropertyClosets < ActiveRecord::Migration[5.2]
  def change
    create_table :property_closets do |t|
      t.references :closet, foreign_key: true
      t.references :property, foreign_key: true
      t.references :qualities, foreign_key: true

      t.timestamps
    end
  end
end
