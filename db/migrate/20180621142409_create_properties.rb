class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.integer :developer_id, :default => 0
      t.string :name
      t.string :permalink
      t.text :address
      t.string :location

      t.boolean :completed, :default => false
      t.string :target_completion_date

      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at

      t.text :description
      t.text :unit_types
      t.boolean :studio
      t.boolean :one_bedroom
      t.boolean :two_bedroom
      t.boolean :three_bedroom
      t.boolean :penthouse
      t.boolean :loft

      t.text :unit_sizes
      t.string :studio_size
      t.string :one_bedroom_size
      t.string :two_bedroom_size
      t.string :three_bedroom_size
      t.string :penthouse_size
      t.string :loft_size

      t.text :price_range
      t.float :studio_price, :default => 0
      t.float :one_bedroom_price, :default => 0
      t.float :two_bedroom_price, :default => 0
      t.float :three_bedroom_price, :default => 0
      t.float :penthouse_price, :default => 0
      t.float :loft_price, :default => 0

      t.float :studio_monthly, :default => 0
      t.float :one_bedroom_monthly, :default => 0
      t.float :two_bedroom_monthly, :default => 0
      t.float :three_bedroom_monthly, :default => 0
      t.float :penthouse_monthly, :default => 0
      t.float :loft_monthly, :default => 0

      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size
      t.datetime :logo_updated_at

       t.string :location_map_file_name
       t.string :location_map_content_type
       t.integer :location_map_file_size
       t.datetime :location_map_updated_at
       t.string :location_map_caption

      # floor plans
      t.string :studio_layout_file_name
      t.string :studio_layout_content_type
      t.integer :studio_layout_file_size
      t.datetime :studio_layout_updated_at
      t.string :studio_layout_caption

      t.string :one_bedroom_layout_file_name
      t.string :one_bedroom_layout_content_type
      t.integer :one_bedroom_layout_file_size
      t.datetime :one_bedroom_layout_updated_at
      t.string :one_bedroom_layout_caption

      t.string :two_bedroom_layout_file_name
      t.string :two_bedroom_layout_content_type
      t.integer :two_bedroom_layout_file_size
      t.datetime :two_bedroom_layout_updated_at
      t.string :two_bedroom_layout_caption

      t.string :three_bedroom_layout_file_name
      t.integer :three_bedroom_layout_content_type
      t.integer :three_bedroom_layout_file_size
      t.datetime :three_bedroom_layout_updated_at
      t.string :three_bedroom_layout_caption

      t.string :penthouse_layout_file_name
      t.string :penthouse_layout_content_type
      t.integer :penthouse_layout_file_size
      t.datetime :penthouse_layout_updated_at
      t.string :penthouse_layout_caption

      t.string :loft_layout_file_name
      t.string :loft_layout_content_type
      t.integer :loft_layout_file_size
      t.datetime :loft_layout_updated_at
      t.string :loft_layout_caption

      t.text :amenities
      t.text :features
      t.text :unit_specifications
      t.text :payment_terms
      t.string :as_low_as
      t.string :as_low_as_label
      t.string :reservation_fee
      t.string :property_type
      t.boolean :featured, :default => false
      t.boolean :hidden, :default => false

      t.float   :latitude
      t.float   :longitude
      t.boolean :sold_out, :default => false
      t.boolean :preselling, :default => false
      t.string :no_of_floors
      t.string :no_of_bldgs
      t.string :no_of_units, :default => 0
      t.float :starting_price
      t.timestamps
    end
  end
end
