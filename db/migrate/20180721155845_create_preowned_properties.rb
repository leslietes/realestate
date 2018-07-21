class CreatePreownedProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :preowned_properties do |t|

      t.timestamps
    end
  end
end
