class Feedback < ApplicationRecord
  validates_presence_of :name, :phone, :message
end
