class Review < ApplicationRecord
  belongs_to :product

  validates :name, :review, presence: true
end
