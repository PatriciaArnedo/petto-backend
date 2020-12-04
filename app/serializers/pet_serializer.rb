class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :hunger, :cleanliness, :energy, :happiness, :happy_img, :sad_img, :user_id, :bio, :created_at
  belongs_to :user
  
end
