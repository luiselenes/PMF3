class CreateAgriculturalCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :agricultural_companies do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :responsable

      t.timestamps
    end
  end
end
