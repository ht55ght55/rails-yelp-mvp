# frozen_string_literal: true

# this is a class for Restaurants
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[belgian french italian japanese chinese].freeze
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
