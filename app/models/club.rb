class Club < ApplicationRecord
  belongs_to :bag

  validates :name, :brand, presence: true
end
