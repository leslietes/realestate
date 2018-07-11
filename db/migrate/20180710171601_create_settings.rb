class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string   "production_email"

      t.string   "office_no"
      t.string   "office_address"

      t.string   "facebook"
      t.string   "twitter"
      t.string   "instagram"

      t.text     "about_us"

      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end
  end
end
