class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
