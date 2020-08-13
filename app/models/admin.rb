class Admin < User
  # require 'models/user'

  validates :first_name, presence: true
  validates :last_name, presence: true
end
