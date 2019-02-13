# frozen_string_literal: true

# Review
class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating,  inclusion: { in: [*(0..5)] },
                      numericality: { only_integer: true }

  def self.rating_range
    [*(0..5)]
  end
end
