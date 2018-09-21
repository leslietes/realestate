class Feedback < ApplicationRecord
  validates_presence_of :name, :phone, :message
  belongs_to :property, optional: true
  belongs_to :preowned_property, optional: true
end
