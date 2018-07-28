class AddRentSaleToPreowned < ActiveRecord::Migration[5.0]
  def self.up
    change_table :preowned_properties do |t|
      t.string :rent_or_sale

      
    end
  end

  def self.down


  end
end
