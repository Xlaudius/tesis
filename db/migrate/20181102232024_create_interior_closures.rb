class CreateInteriorClosures < ActiveRecord::Migration[5.2]
  def change
    create_table :interior_closures do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
