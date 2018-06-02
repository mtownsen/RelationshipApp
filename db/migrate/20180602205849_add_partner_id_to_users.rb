class AddPartnerIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :partner_id, :integer
    add_column :users, :name, :text
  end
end
