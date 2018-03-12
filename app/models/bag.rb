class Bag < ApplicationRecord
  has_many :clubs
  belongs_to :user

  validates :title, :brand, presence: true

  def clubs_attributes=(clubs_attributes)
    self.clubs.build(clubs_attributes)
  end

end
