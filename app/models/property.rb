class Property < ApplicationRecord
  validates_presence_of   :developer_id, :name, :permalink
  validates_uniqueness_of :permalink
  
  belongs_to :developer
  
  # include hidden - index page logged in user
  def self.show_all
    Property.all.to_a
    #Property.find(:all, :select => "name, permalink, location, target_completion_date, developer_id, completed, 
    #                studio, one_bedroom, two_bedroom, three_bedroom, penthouse, loft, 
    #                studio_size, one_bedroom_size, two_bedroom_size, three_bedroom_size, penthouse_size, loft_size, 
    #                studio_price, one_bedroom_price, two_bedroom_price, three_bedroom_price, penthouse_price, loft_price,
    #                studio_monthly, one_bedroom_monthly, two_bedroom_monthly, three_bedroom_monthly, penthouse_monthly, loft_monthly, hidden, featured, sold_out, preselling, latitude, longitude",
    #                :order => "name ASC", :include => :developer)
  end
  
  # do not include hidden - index page
  def self.show_all_visible
    #Property.find(:all,  :select => "name, permalink, location, target_completion_date, developer_id, completed, 
    #                studio, one_bedroom, two_bedroom, three_bedroom, penthouse, loft, 
    #                studio_size, one_bedroom_size, two_bedroom_size, three_bedroom_size, penthouse_size, loft_size, 
    #                studio_price, one_bedroom_price, two_bedroom_price, three_bedroom_price, penthouse_price, loft_price,
    #                studio_monthly, one_bedroom_monthly, two_bedroom_monthly, three_bedroom_monthly, penthouse_monthly, loft_monthly, hidden, featured, sold_out, preselling, latitude, longitude",
    #                :conditions => ["hidden = ?", false], :order => "name ASC",
    #                :include => :developer)
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
