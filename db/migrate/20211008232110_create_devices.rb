class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.float :capacity
      t.boolean :status
      t.references :agricultural_companies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
