class AddPreownedLocation < ActiveRecord::Migration[5.0]
  def self.up
    change_table :preowned_properties do |t|
      t.string :location
    end
  end

  def self.down
    remove_attachment :preowned_properties, :location
  end

end
