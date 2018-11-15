class RemoveRoleFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :role, :string
  end
end
