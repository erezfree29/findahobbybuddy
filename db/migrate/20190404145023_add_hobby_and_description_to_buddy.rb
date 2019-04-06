class AddHobbyAndDescriptionToBuddy < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :hobby, :string
    add_column :buddies, :hobby_description, :string
  end
end
