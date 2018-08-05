class Feedback < ApplicationRecord
  validates_presence_of :name, :phone, :message
  belongs_to :feedback, optional: true
end
