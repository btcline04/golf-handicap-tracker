class Bag < ApplicationRecord
  has_many :clubs
  belongs_to :user

  validates :title, :brand, presence: true
end
