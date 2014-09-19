class ChangeColumnInMessages < ActiveRecord::Migration
  def change
    change_column :messages, :to, :float
    change_column :messages, :to, :float
  end
end
