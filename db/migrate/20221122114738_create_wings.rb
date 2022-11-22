class CreateWings < ActiveRecord::Migration[7.0]
  def change
    create_table :wings do |t|
      t.string :type
      t.string :color
      t.string :name
      t.text :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
