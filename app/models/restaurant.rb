class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  validates :category, exclusion: { in: %w(neptunian)}
  has_many :reviews, dependent: :destroy
end
