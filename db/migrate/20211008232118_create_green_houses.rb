class CreateGreenHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :green_houses do |t|
      t.string :name
      t.string :code_greenhouse
      t.float :lat
      t.float :lng
      t.boolean :status
      t.references :agricultural_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
