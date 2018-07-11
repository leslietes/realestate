class CreatePriceRanges < ActiveRecord::Migration[5.0]
  def change
    create_table :price_ranges do |t|
      t.string  :range
      t.integer :value_from
      t.integer :value_to
      t.timestamps
    end
  end
end
