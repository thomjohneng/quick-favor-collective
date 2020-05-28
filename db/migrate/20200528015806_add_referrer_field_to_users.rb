class AddReferrerFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :linkedin, :string
    add_column :users, :referrer, :string
  end
end
