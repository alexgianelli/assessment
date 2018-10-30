class CreateRainfalls < ActiveRecord::Migration[5.2]
  def change
    create_table :rainfalls do |t|
      t.string :timestamp
      t.decimal :value

      t.timestamps
    end
  end
end
