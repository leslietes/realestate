class Setting < ApplicationRecord

  has_attached_file :featured1, :styles => { :large => '1425x540#', :thumb => '70x52#'}
  validates_attachment_content_type :featured1, content_type: /\Aimage\/.*\z/

  has_attached_file :featured2, :styles => { :large => '1425x540#', :thumb => '70x52#'}
  validates_attachment_content_type :featured2, content_type: /\Aimage\/.*\z/

  has_attached_file :featured3, :styles => { :large => '1425x540#', :thumb => '70x52#'}
  validates_attachment_content_type :featured3, content_type: /\Aimage\/.*\z/

  has_attached_file :featured4, :styles => { :large => '1425x540#', :thumb => '70x52#'}
  validates_attachment_content_type :featured4, content_type: /\Aimage\/.*\z/

  has_attached_file :featured5, :styles => { :large => '1425x540#', :thumb => '70x52#'}
  validates_attachment_content_type :featured5, content_type: /\Aimage\/.*\z/

end
