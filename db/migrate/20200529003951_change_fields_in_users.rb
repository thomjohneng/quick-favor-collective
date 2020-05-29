class ChangeFieldsInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :story, :string
    rename_column :users, :story, :oneliner
  end
end
