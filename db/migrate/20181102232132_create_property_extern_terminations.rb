class CreatePropertyExternTerminations < ActiveRecord::Migration[5.2]
  def change
    create_table :property_extern_terminations do |t|
      t.references :property, foreign_key: true
      t.references :external_termination, foreign_key: true

      t.timestamps
    end
  end
end
