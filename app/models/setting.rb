class Setting < ApplicationRecord

  has_attached_file :featured1, :styles => { :medium => "155x165>"}
  validates_attachment_content_type :featured1, content_type: /\Aimage\/.*\z/

  has_attached_file :featured2, :styles => { :medium => "155x165>"}
  validates_attachment_content_type :featured2, content_type: /\Aimage\/.*\z/

  has_attached_file :featured3, :styles => { :medium => "155x165>"}
  validates_attachment_content_type :featured3, content_type: /\Aimage\/.*\z/

  has_attached_file :featured4, :styles => { :medium => "155x165>"}
  validates_attachment_content_type :featured4, content_type: /\Aimage\/.*\z/

  has_attached_file :featured5, :styles => { :medium => "155x165>"}
  validates_attachment_content_type :featured5, content_type: /\Aimage\/.*\z/

end
