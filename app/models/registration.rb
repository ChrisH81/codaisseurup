class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  before_save :set_status, :set_total_price

  def set_status
    event.price > 0 ? self.status = "pending" : self.status = "confirmed"
  end

  def set_total_price
    self.price = event.price * guests_count
  end
end
