class AddRespondedFieldToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :responded, :boolean, :default => false
  end
end
