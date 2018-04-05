class Volunteer < ApplicationRecord
  validates :terms_and_conditions, acceptance: true
end
