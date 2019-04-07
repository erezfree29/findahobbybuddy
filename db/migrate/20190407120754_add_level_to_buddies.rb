class AddLevelToBuddies < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :level, :string
  end
end
