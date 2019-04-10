class AddPhotoToBuddie < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :gender, :string
  end
end
