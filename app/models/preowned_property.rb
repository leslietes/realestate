class PreownedProperty < ApplicationRecord

#132x98#

  def self.show_all
    where(hidden: false)
  end

  def to_param
    permalink
  end

end
