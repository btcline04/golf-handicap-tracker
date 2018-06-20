class Club < ApplicationRecord
  belongs_to :bag
  validates :name, :brand, presence: true

  def next
    club = Club.where("id > ?", id).first

    if club
      club
    else
      Club.first
    end

  end

end
