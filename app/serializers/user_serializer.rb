class UserSerializer < ActiveModel::Serializer
  attributes :email, :avatar, :bio
end
