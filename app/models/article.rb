class Article < ApplicationRecord

  has_attached_file :article_photo, :styles => { :medium => "155x165>"}
  validates_attachment_content_type :article_photo, content_type: /\Aimage\/.*\z/

  validates_presence_of   :title, :permalink, :body, :published_date, :published_at
  validates_uniqueness_of :permalink

  def to_param
    permalink
  end
end
