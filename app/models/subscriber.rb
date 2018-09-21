class Subscriber < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  before_create do
    self.unsubscribe_token = SecureRandom.hex(20)
    self.subscribed_at = DateTime.now
  end
end
