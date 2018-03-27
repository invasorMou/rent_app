class CreateChangepays < ActiveRecord::Migration[5.1]
  def change
    change_column :payments, :amount, :float
  end
end
