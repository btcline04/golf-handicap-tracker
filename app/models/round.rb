class Round < ApplicationRecord
  belongs_to :course

  validates :score, :date, presence: true

  def self.most_recent
    order(created_at: :desc).limit(5)
  end

end
