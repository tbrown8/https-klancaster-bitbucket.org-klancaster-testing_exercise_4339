class AddBalanceToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :balance, :float
  end
end
