class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
    	t.string :name
    	t.string :email
    	t.integer :apartment_id
    	t.date :move_in
    	t.date :move_out
    	t.timestamps
    end
  end
end
