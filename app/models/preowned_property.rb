class PreownedProperty < ApplicationRecord
  has_attached_file :photo, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :logo,  :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :location_map, :styles => { :medium => "264x194#", :large => "870x441#"}

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :location_map, content_type: /\Aimage\/.*\z/

  validates_presence_of   :developer_id, :name, :permalink, :location, :address
  validates_presence_of   :unit_type, :unit_size

  validates_uniqueness_of :permalink

  belongs_to :developer
  has_many :feedbacks

  def self.show_all
    where(hidden: false)
  end

  def to_param
    permalink
  end

end
