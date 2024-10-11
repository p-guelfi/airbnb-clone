class Instrument < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true
  has_many :bookings
end
