class AddAttachmentArticlePhotoToArticles < ActiveRecord::Migration[5.0]
  def self.up
    change_table :articles do |t|
      t.attachment :article_photo
    end
  end

  def self.down
    remove_attachment :articles, :article_photo
  end
end
