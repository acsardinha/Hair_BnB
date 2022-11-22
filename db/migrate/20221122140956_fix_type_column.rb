class FixTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :wigs, :type, :wig_type
  end
end
