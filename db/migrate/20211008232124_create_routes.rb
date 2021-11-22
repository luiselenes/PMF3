class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.references :device, null: false, foreign_key: true
      t.datetime :routedate, default: -> { 'CURRENT_TIMESTAMP' }
      t.timestamps
    end
  end
end
