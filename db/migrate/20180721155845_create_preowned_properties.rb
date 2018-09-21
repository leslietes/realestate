class CreatePreownedProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :preowned_properties do |t|
      t.string :name
      t.string :permalink
      t.string :address
      t.string :location
      t.string :project_name
      t.references :developer
      t.string :view #mountain/sea/city
      t.string :orientation #east/west facing
      t.string :unit_type
      t.string :unit_size
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :parking_slot
      t.boolean :furnished
      t.float   :monthly_dues
      t.float  :price

      t.float   :latitude
      t.float   :longitude

      t.boolean :elevators
      t.boolean :swimming_pool
      t.boolean :fitness_gym
      t.boolean :parking
      t.boolean :function_room
      t.boolean :retail_area
      t.boolean :childrens_play_area
      t.boolean :garden
      t.boolean :shooting_court
      t.boolean :laundry_room
      t.boolean :mail_room
      t.boolean :security
      t.boolean :lobby
      t.boolean :property_management_services
      t.boolean :clubhouse
      t.boolean :back_up_power

      t.string  :status #sold/New
      t.boolean :hidden

      t.attachment :photo
      t.attachment :logo
      t.attachment :location_map

      t.timestamps
    end
  end
end
