class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartment_types do |t|
      t.string :title, nil: false
      t.string :short_title
    end
    create_table :apartments do |t|
      t.belongs_to :apartment_type, index: true
      t.belongs_to :property, index: true
      t.attachment :layout_image
      t.string :layout_text
      t.integer :size
      t.float :price
      t.float :price_monthly
      t.timestamps
    end
    add_column :properties, :price_from, :integer, default: nil
    add_column :properties, :price_to, :integer, default: nil
  end
end
