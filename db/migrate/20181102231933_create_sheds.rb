class CreateSheds < ActiveRecord::Migration[5.2]
  def change
    create_table :sheds do |t|
      t.string :name

      t.timestamps
    end
  end
end
