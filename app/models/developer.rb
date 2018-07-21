class Developer < ApplicationRecord
  has_many :properties

  has_attached_file :image, :styles => { :medium => "264x194#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_presence_of   :developer, :permalink
  validates_uniqueness_of :permalink

  # including hidden
  def self.show_all
    Developer.find(:all, :order => "developer ASC")
  end

  # not including hidden
  def self.show_all_visible
    Developer.find(:all, :conditions => ["hidden = ?", false], :order => "developer ASC")
  end

  def show_all_projects
   properties.find(:all, :conditions => ["hidden = ?", false], :order => "name ASC")
  #Property.find(:all, :conditions => ["developer = ? and hidden = ?", self.id, false], :order => "name ASC")
  end

  def to_param
    permalink
  end

end
