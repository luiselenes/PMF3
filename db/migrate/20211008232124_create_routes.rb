class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.references :device, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
