class AddAddressToBuddie < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :address, :string
  end
end
