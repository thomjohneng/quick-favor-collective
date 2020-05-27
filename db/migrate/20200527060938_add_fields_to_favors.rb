class AddFieldsToFavors < ActiveRecord::Migration[5.2]
  def change
    add_column :favors, :favor, :string
    add_column :favors, :details, :text
    add_column :favors, :significance, :string
    add_column :favors, :link, :string
  end
end
