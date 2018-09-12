# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180805055524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string   "agent_name"
    t.string   "mobile_no"
    t.string   "email_address"
    t.string   "linked_in"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "position"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "permalink"
    t.string   "teaser"
    t.text     "body"
    t.boolean  "featured"
    t.integer  "created_by"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.date     "published_date"
    t.string   "published_at"
    t.string   "article_photo_caption"
    t.string   "article_photo_file_name"
    t.string   "article_photo_content_type"
    t.integer  "article_photo_file_size"
    t.datetime "article_photo_updated_at"
  end

  create_table "developers", force: :cascade do |t|
    t.string   "developer"
    t.string   "permalink"
    t.text     "description"
    t.boolean  "hidden",             default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "property_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsletter_subscriptions", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.boolean  "active",     default: true
    t.text     "message"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "preowned_properties", force: :cascade do |t|
    t.string   "name"
    t.string   "permalink"
    t.string   "address"
    t.string   "location"
    t.string   "project_name"
    t.string   "developer"
    t.string   "view"
    t.string   "orientation"
    t.string   "unit_type"
    t.string   "unit_size"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "parking_slot"
    t.boolean  "furnished"
    t.float    "monthly_dues"
    t.string   "price"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "elevators"
    t.boolean  "swimming_pool"
    t.boolean  "fitness_gym"
    t.boolean  "parking"
    t.boolean  "function_room"
    t.boolean  "retail_area"
    t.boolean  "childrens_play_area"
    t.boolean  "garden"
    t.boolean  "shooting_court"
    t.boolean  "laundry_room"
    t.boolean  "mail_room"
    t.boolean  "security"
    t.boolean  "lobby"
    t.boolean  "property_management_services"
    t.boolean  "clubhouse"
    t.boolean  "back_up_power"
    t.string   "status"
    t.boolean  "hidden"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "rent_or_sale"
  end

  create_table "price_ranges", force: :cascade do |t|
    t.string   "range"
    t.integer  "value_from"
    t.integer  "value_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "developer_id",                      default: 0
    t.string   "name"
    t.string   "permalink"
    t.text     "address"
    t.string   "location"
    t.string   "status"
    t.boolean  "completed",                         default: false
    t.string   "target_completion_date"
    t.text     "description"
    t.text     "unit_types"
    t.boolean  "studio"
    t.boolean  "one_bedroom"
    t.boolean  "two_bedroom"
    t.boolean  "three_bedroom"
    t.boolean  "penthouse"
    t.boolean  "loft"
    t.text     "unit_sizes"
    t.string   "studio_size"
    t.string   "one_bedroom_size"
    t.string   "two_bedroom_size"
    t.string   "three_bedroom_size"
    t.string   "penthouse_size"
    t.string   "loft_size"
    t.text     "price_range"
    t.float    "price_from",                        default: 0.0
    t.float    "price_to",                          default: 0.0
    t.float    "studio_price",                      default: 0.0
    t.float    "one_bedroom_price",                 default: 0.0
    t.float    "two_bedroom_price",                 default: 0.0
    t.float    "three_bedroom_price",               default: 0.0
    t.float    "penthouse_price",                   default: 0.0
    t.float    "loft_price",                        default: 0.0
    t.float    "studio_monthly",                    default: 0.0
    t.float    "one_bedroom_monthly",               default: 0.0
    t.float    "two_bedroom_monthly",               default: 0.0
    t.float    "three_bedroom_monthly",             default: 0.0
    t.float    "penthouse_monthly",                 default: 0.0
    t.float    "loft_monthly",                      default: 0.0
    t.string   "studio_layout_caption"
    t.string   "one_bedroom_layout_caption"
    t.string   "two_bedroom_layout_caption"
    t.string   "three_bedroom_layout_caption"
    t.string   "penthouse_layout_caption"
    t.string   "loft_layout_caption"
    t.text     "amenities"
    t.text     "features"
    t.text     "unit_specifications"
    t.text     "payment_terms"
    t.string   "as_low_as"
    t.string   "as_low_as_label"
    t.string   "reservation_fee"
    t.string   "property_type"
    t.boolean  "featured",                          default: false
    t.boolean  "hidden",                            default: false
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "sold_out",                          default: false
    t.boolean  "preselling",                        default: false
    t.string   "no_of_floors"
    t.string   "no_of_bldgs"
    t.string   "no_of_units",                       default: "0"
    t.float    "starting_price"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.boolean  "elevators"
    t.boolean  "swimming_pool"
    t.boolean  "fitness_gym"
    t.boolean  "parking"
    t.boolean  "function_room"
    t.boolean  "retail_area"
    t.boolean  "childrens_play_area"
    t.boolean  "garden"
    t.boolean  "shooting_court"
    t.boolean  "laundry_room"
    t.boolean  "mail_room"
    t.boolean  "security"
    t.boolean  "lobby"
    t.boolean  "property_management_services"
    t.boolean  "clubhouse"
    t.boolean  "back_up_power"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "location_map_file_name"
    t.string   "location_map_content_type"
    t.integer  "location_map_file_size"
    t.datetime "location_map_updated_at"
    t.string   "studio_layout_file_name"
    t.string   "studio_layout_content_type"
    t.integer  "studio_layout_file_size"
    t.datetime "studio_layout_updated_at"
    t.string   "one_bedroom_layout_file_name"
    t.string   "one_bedroom_layout_content_type"
    t.integer  "one_bedroom_layout_file_size"
    t.datetime "one_bedroom_layout_updated_at"
    t.string   "two_bedroom_layout_file_name"
    t.string   "two_bedroom_layout_content_type"
    t.integer  "two_bedroom_layout_file_size"
    t.datetime "two_bedroom_layout_updated_at"
    t.string   "three_bedroom_layout_file_name"
    t.string   "three_bedroom_layout_content_type"
    t.integer  "three_bedroom_layout_file_size"
    t.datetime "three_bedroom_layout_updated_at"
    t.string   "penthouse_layout_file_name"
    t.string   "penthouse_layout_content_type"
    t.integer  "penthouse_layout_file_size"
    t.datetime "penthouse_layout_updated_at"
    t.string   "loft_layout_file_name"
    t.string   "loft_layout_content_type"
    t.integer  "loft_layout_file_size"
    t.datetime "loft_layout_updated_at"
  end

  create_table "settings", force: :cascade do |t|
    t.string   "agency_name"
    t.string   "agent_name"
    t.string   "production_email"
    t.string   "sales_email"
    t.string   "mobile_no"
    t.string   "office_no"
    t.string   "office_address"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.text     "about_us"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "featured1_file_name"
    t.string   "featured1_content_type"
    t.integer  "featured1_file_size"
    t.datetime "featured1_updated_at"
    t.string   "featured2_file_name"
    t.string   "featured2_content_type"
    t.integer  "featured2_file_size"
    t.datetime "featured2_updated_at"
    t.string   "featured3_file_name"
    t.string   "featured3_content_type"
    t.integer  "featured3_file_size"
    t.datetime "featured3_updated_at"
    t.string   "featured4_file_name"
    t.string   "featured4_content_type"
    t.integer  "featured4_file_size"
    t.datetime "featured4_updated_at"
    t.string   "featured5_file_name"
    t.string   "featured5_content_type"
    t.integer  "featured5_file_size"
    t.datetime "featured5_updated_at"
    t.string   "featured1_caption"
    t.string   "featured2_caption"
    t.string   "featured3_caption"
    t.string   "featured4_caption"
    t.string   "featured5_caption"
    t.string   "featured1_link_text"
    t.string   "featured2_link_text"
    t.string   "featured3_link_text"
    t.string   "featured4_link_text"
    t.string   "featured5_link_text"
    t.string   "featured1_link_url"
    t.string   "featured2_link_url"
    t.string   "featured3_link_url"
    t.string   "featured4_link_url"
    t.string   "featured5_link_url"
    t.text     "management_text"
    t.text     "topic1"
    t.text     "topic2"
    t.text     "topic3"
    t.text     "topic4"
    t.text     "topic5"
    t.text     "answer1"
    t.text     "answer2"
    t.text     "answer3"
    t.text     "answer4"
    t.text     "answer5"
    t.boolean  "show_topic1",            default: true
    t.boolean  "show_topic2",            default: true
    t.boolean  "show_topic3",            default: true
    t.boolean  "show_topic4",            default: true
    t.boolean  "show_topic5",            default: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
