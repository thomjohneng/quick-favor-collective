class ChangeStatusFieldInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :status, :string, :default => "unverified"
  end
end
