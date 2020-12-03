class Pet < ApplicationRecord
  belongs_to :user
  validates :happiness, :energy, :cleanliness, :hunger, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
end
