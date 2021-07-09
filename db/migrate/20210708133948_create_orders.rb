class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :admin_reference
      t.string :state	
      t.string :payment_state	
      t.string :shipment_state	
      t.float :total	
      t.string :currency	
      t.string :bill_city	
      t.integer :bill_zipcode	
      t.string :bill_country_iso_name	
      t.string :ship_city	
      t.integer :ship_zipcode	
      t.string :ship_country_iso_name	
      t.string :product_name	
      t.integer :quantity	
      t.string :sku	
      t.date :completed_at_y	
      t.date :Date	
      t.string :Time	
      t.integer :Year	
      t.string :Month	
      t.integer :Day	
      t.integer :Hour	
      t.integer :Minute	
      t.string :DayofWeek

      t.timestamps
    end
  end
end
