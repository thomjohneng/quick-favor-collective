class AddFieldsToInquiry < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :subject, :string
    add_column :inquiries, :message, :text

    add_reference :inquiries, :user, foreign_key: true
    add_column :inquiries, :first_name, :string
    add_column :inquiries, :last_name, :string
    add_column :inquiries, :email, :string
  end
end
