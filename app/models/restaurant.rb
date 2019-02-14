# frozen_string_literal: true

# Restaurant
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category,
            inclusion: { in: %w[chinese italian japanese french belgian] }

  def self.categories
    %w[chinese italian japanese french belgian]
  end

  def reviews_sort_date
    reviews.reverse
  end
end
