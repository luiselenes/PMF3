class CreateGreenHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :green_houses do |t|
      t.string :code_greenhouse
      t.float :area_grooves
      t.boolean :status
      t.references :agricultural_companies, null: false, foreign_key: true

      t.timestamps
    end
  end
end
