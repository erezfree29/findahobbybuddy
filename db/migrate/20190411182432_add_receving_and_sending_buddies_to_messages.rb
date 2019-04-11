class AddRecevingAndSendingBuddiesToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :receving_buddie_id, :integer
    add_column :messages, :sending_buddie_id, :integer

  end
end
