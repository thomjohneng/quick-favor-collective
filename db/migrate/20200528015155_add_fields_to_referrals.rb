class AddFieldsToReferrals < ActiveRecord::Migration[5.2]
  def change
    add_column :referrals, :first_name, :string
    add_column :referrals, :last_name, :string
    add_column :referrals, :email, :string
    add_column :referrals, :signed_up, :boolean, :default => false
  end
end
