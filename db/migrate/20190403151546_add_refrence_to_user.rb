class AddRefrenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :buddies, :user, foreign_key: true
  end
end
