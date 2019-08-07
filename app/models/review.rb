# frozen_string_literal: true

# this is a class for reviews
class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }

end
