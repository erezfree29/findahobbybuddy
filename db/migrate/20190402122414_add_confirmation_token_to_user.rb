class AddConfirmationTokenToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :confirmation_token, :datetime
  end
end
