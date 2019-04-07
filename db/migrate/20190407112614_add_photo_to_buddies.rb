class AddPhotoToBuddies < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :photo, :string
  end
end
