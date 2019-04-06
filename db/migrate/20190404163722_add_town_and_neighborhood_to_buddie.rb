class AddTownAndNeighborhoodToBuddie < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :town, :string
    add_column :buddies, :neighborhood, :string
  end
end
