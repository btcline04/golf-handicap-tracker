class Course < ApplicationRecord
  belongs_to :user
  has_many :scores

  validates :name, :location, :par, presence: true
end
