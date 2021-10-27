class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.boolean :status
      t.references :device, null: false, foreign_key: true
      t.date :routedate
      t.timestamps
    end
  end
end
