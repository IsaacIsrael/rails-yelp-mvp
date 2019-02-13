# frozen_string_literal: true

# Restaurant
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
