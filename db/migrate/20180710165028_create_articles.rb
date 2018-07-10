class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string   "title"
      t.string   "permalink"
      t.string   "teaser"
      t.text     "body"
      t.boolean  "featured"
      t.integer  "created_by"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.date     "published_date"
      t.string   "published_at"

      t.string   "article_photo_caption"
      t.timestamps
    end
  end
end
