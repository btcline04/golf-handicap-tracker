class Round < ApplicationRecord
  belongs_to :course

  validates :score, :date, presence: true
end
