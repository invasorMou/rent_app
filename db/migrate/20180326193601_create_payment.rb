class CreatePayment < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
    	t.integer :number
    	t.string :owner
    	t.float :rent
    end
  end
end
