class CreateApartment < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
    	t.date :date
    	t.integer :amount
    	t.string :description
    	t.integer :tenant_id
    	t.timestamps
    end
  end
end
