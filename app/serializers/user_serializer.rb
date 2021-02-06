class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :first_name, :last_name, :image, :age, :city, :favorite_genres, :email, :phone
end
