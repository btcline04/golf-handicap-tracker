class Course < ApplicationRecord
  belongs_to :user
  has_many :rounds

  validates :name, :location, :par, presence: true
end
