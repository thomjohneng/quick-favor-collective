class ChangeFieldInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :verified, :string
    rename_column :users, :verified, :status
  end
end
