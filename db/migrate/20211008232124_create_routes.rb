class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.float :height
      t.float :latitude
      t.float :longitud
      t.boolean :status
      t.references :devices, null: false, foreign_key: true

      t.timestamps
    end
  end
end
