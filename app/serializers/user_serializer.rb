class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :username
end
