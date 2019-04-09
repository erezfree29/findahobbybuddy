class ChangeAgeToInteger < ActiveRecord::Migration[5.2]
  def change
    remove_column :buddies, :age
     add_column :buddies, :age, :string

  end
end
