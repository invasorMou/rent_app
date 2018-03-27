class CreateApartments < ActiveRecord::Migration[5.1]
  def change
    create_table :apartments do |t|
    	t.integer :number
    	t.string :owner
    	t.float :rent
    	t.timestamps
    end
  end
end
