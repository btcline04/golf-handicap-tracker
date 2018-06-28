class BagSerializer < ActiveModel::Serializer
  attributes :title, :brand, :id
  has_many :clubs
end
