# frozen_string_literal: true

RESTAURANT_CATEGORIES = %w[chinese italian japanese french belgian].freeze

# Restaurant
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: RESTAURANT_CATEGORIES }
end
