class ChangeFieldsInFavors < ActiveRecord::Migration[5.2]
  def change
    add_column :favors, :introduction, :string
    add_column :favors, :funfact, :string
  end
end
