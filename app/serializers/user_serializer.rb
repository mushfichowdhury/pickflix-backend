class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :avatar, :bio
end
