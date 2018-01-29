class Course < ApplicationRecord
  belongs_to :user
  validates :name, :location, :par, presence: true
end
