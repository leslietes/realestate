class ApartmentType < ApplicationRecord

  has_many :properties, through: :apartments
  has_many :apartments

end
