class CreateUserCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :user_companies do |t|
      t.references :agricultural_company, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
