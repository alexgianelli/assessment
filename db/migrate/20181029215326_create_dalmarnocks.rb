class CreateDalmarnocks < ActiveRecord::Migration[5.2]
  def change
    create_table :dalmarnocks do |t|
      t.string :timestamp
      t.decimal :value

      t.timestamps
    end
  end
end
