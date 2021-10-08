class CreateImagens < ActiveRecord::Migration[6.1]
  def change
    create_table :imagens do |t|
      t.string :des

      t.timestamps
    end
  end
end
