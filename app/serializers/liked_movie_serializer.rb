class LikedMovieSerializer < ActiveModel::Serializer
  attributes :id, :watched
  has_one :user
  has_one :movie
end
