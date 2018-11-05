class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.integer :number_assesment
      t.references :state, foreign_key: true
      t.string :location
      t.boolean :inhabited
      t.string :habitant
      t.references :client, foreign_key: true
      t.references :owner, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
