class AddDisplayDateToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :display_date, :datetime
  end
end
