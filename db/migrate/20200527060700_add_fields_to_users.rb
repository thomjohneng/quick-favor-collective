class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :story, :text
    add_column :users, :city, :string
    add_column :users, :industry, :string
  end
end
