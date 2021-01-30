class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :image
end
