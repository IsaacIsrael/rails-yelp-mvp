# frozen_string_literal: true

# Restaurant
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: Restaurant.category }

  def self.category
    %w[chinese italian japanese french belgian]
  end
end
