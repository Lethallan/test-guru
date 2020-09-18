class Badge < ApplicationRecord
  has_many :userbadges
  has_many :users, through: :userbadges
  has_attached_file :icon, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment :icon, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
