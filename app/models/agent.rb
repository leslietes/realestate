class Agent < ApplicationRecord

  has_attached_file :avatar, :styles => { :medium => "155x165>"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
