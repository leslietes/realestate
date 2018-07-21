class Article < ApplicationRecord

  has_attached_file :article_photo, :styles => { medium: "770x400>"}
  validates_attachment_content_type :article_photo, content_type: /\Aimage\/.*\z/

  validates_presence_of   :title, :permalink, :body, :published_date, :published_at
  validates_uniqueness_of :permalink

  def self.show_latest
    limit(5)
  end

  def to_param
    permalink
  end

  def has_article_photo?
    !article_photo.blank?
  end


end
