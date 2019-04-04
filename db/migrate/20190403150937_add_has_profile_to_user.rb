class AddHasProfileToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :has_profile, :boolean
  end
end
