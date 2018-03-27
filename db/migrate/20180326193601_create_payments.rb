class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
    	t.date :date
    	t.integer :amount
    	t.string :description
    	t.integer :tenant_id
    	t.timestamps
    end
  end
end
