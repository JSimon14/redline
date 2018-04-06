class Volunteer < ApplicationRecord
  validates :first_name, presence: true
  validates :email, presence: true
end
