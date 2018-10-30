class CreateHarelaws < ActiveRecord::Migration[5.2]
  def change
    create_table :harelaws do |t|
      t.string :timestamp
      t.decimal :value

      t.timestamps
    end
  end
end
