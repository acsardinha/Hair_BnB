class CreateSellings < ActiveRecord::Migration[7.0]
  def change
    create_table :sellings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wig, null: false, foreign_key: true

      t.timestamps
    end
  end
end
