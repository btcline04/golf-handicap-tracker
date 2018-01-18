class Bag < ApplicationRecord
  has_many :clubs
  belongs_to :user
end
