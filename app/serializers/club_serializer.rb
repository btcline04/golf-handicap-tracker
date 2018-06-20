class ClubSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand
  belongs_to :bag
end
