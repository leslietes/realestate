class Property < ApplicationRecord
  has_attached_file :photo, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :logo,  :styles => { :medium => "264x194#"}
  has_attached_file :location_map, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :studio_layout, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :one_bedroom_layout, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :two_bedroom_layout, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :three_bedroom_layout, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :penthouse_layout, :styles => { :medium => "264x194#", :large => "870x441#"}
  has_attached_file :loft_layout, :styles => { :medium => "264x194#", :large => "870x441#"}

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :location_map, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :studio_layout, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :one_bedroom_layout, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :two_bedroom_layout, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :three_bedroom_layout, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :penthouse_layout, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :loft_layout, content_type: /\Aimage\/.*\z/

  validates_presence_of   :developer_id, :name, :permalink, :location, :address
  validates_presence_of   :unit_types, :unit_sizes, :price_range

  validates_uniqueness_of :permalink

  belongs_to :developer

  # include hidden - index page logged in user
  def self.show_all
    self.all.to_a
    #Property.find(:all, :select => "name, permalink, location, target_completion_date, developer_id, completed,
    #                studio, one_bedroom, two_bedroom, three_bedroom, penthouse, loft,
    #                studio_size, one_bedroom_size, two_bedroom_size, three_bedroom_size, penthouse_size, loft_size,
    #                studio_price, one_bedroom_price, two_bedroom_price, three_bedroom_price, penthouse_price, loft_price,
    #                studio_monthly, one_bedroom_monthly, two_bedroom_monthly, three_bedroom_monthly, penthouse_monthly, loft_monthly, hidden, featured, sold_out, preselling, latitude, longitude",
    #                :order => "name ASC", :include => :developer)
  end

  # do not include hidden - index page
  def self.show_all_visible
    self.all
    #Property.find(:all,  :select => "name, permalink, location, target_completion_date, developer_id, completed,
    #                studio, one_bedroom, two_bedroom, three_bedroom, penthouse, loft,
    #                studio_size, one_bedroom_size, two_bedroom_size, three_bedroom_size, penthouse_size, loft_size,
    #                studio_price, one_bedroom_price, two_bedroom_price, three_bedroom_price, penthouse_price, loft_price,
    #                studio_monthly, one_bedroom_monthly, two_bedroom_monthly, three_bedroom_monthly, penthouse_monthly, loft_monthly, hidden, featured, sold_out, preselling, latitude, longitude",
    #                :conditions => ["hidden = ?", false], :order => "name ASC",
    #                :include => :developer)
  end

  def self.show_latest_listings
    self.limit(5).order(created_at: :desc).to_a
  end

  def self.show_featured_listings
    self.where(featured: true).limit(6).order(created_at: :desc)
  end

  def self.show_preselling
    self.where(preselling: true).limit(5).order(created_at: :desc)
  end

  def self.property_types
    [[''],['Condominium'],['Condotel']]
  end

  def developer_name
    developer.blank? ? "" : developer.developer
  end

  def completion_date
    self.completed? ? 'Completed' : self.target_completion_date
  end

  def has_tagline?
    !as_low_as.blank?
  end

  def has_payment_terms?
    !payment_terms.blank?
  end

  def has_address?
    !address.blank?
  end

  def has_target_completion_date?
    !target_completion_date.blank?
  end

  def has_amenities?
    !amenities.blank?
  end

  def has_unit_specifications?
    !unit_specifications.blank?
  end

  def has_reservation_fee?
    !reservation_fee.blank?
  end

  def to_param
    permalink
  end

end
