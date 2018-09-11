class Apartment < ApplicationRecord

  belongs_to :apartment_type
  belongs_to :property

  has_attached_file :layout_image, :styles => { :medium => "264x194#", :large => "870x441#"}
  validates_attachment_content_type :layout_image, content_type: /\Aimage\/.*\z/

end
