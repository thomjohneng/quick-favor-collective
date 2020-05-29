class ChangeFieldsInFavorsAndUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :favors, :funfact
    add_column :users, :funfact, :string
  end
end
