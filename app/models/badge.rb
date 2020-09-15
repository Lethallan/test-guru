class Badge < ApplicationRecord
  has_many :userbadges
  has_many :users, through: :userbadges
  # has_one_attached :image
end
