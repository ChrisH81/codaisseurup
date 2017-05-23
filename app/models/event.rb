class Event < ApplicationRecord
  belongs_to :user

  validates :description, presence: true, length: { maximum: 500 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :location, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  has_and_belongs_to_many :categories
end
