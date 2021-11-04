class CreatePaths < ActiveRecord::Migration[6.1]
  def change
    create_table :paths, :primary_key => false ,:id=>false do |t|
      t.float :lat
      t.float :lng
      t.boolean :sensor
      t.float :velocity
      t.references :route, null: false, foreign_key: true

      t.timestamps
    end
  end
end
