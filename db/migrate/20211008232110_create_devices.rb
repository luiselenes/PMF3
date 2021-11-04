class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name, unique: true
      t.float :capacity
      t.boolean :logicaldelete
      t.references :agricultural_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
