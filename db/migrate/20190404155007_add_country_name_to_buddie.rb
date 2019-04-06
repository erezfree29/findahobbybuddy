class AddCountryNameToBuddie < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :countryname, :string
  end
end
