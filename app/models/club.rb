class Club < ApplicationRecord
  belongs_to :bag
  belongs_to :user

  validates :name, :brand, presence: true
end
