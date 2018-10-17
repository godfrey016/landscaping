class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
    	t.string :customer_first_nm
    	t.string :customer_last_nm
    	t.string :customer_email
    	t.text :comment
    end
  end
end
