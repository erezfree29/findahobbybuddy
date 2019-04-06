class CreateCoutries < ActiveRecord::Migration[5.2]
  def change
    create_table :coutries do |t|
      t.string :name

      t.timestamps
    end
  end
end
