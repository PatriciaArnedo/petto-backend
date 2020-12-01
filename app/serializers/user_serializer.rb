class UserSerializer < ActiveModel::Serializer
  attributes :id
  attributes :name

  has_many :pets
end
