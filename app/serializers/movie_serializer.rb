class MovieSerializer < ActiveModel::Serializer
  attributes :netflixid, :title, :image, :rating, :media, :runtime, :largeimage, :imdbid, :priority, :genre, :year, :released, :rated, :director, :writer, :actors, :plot, :language, :country, :awards, :poster, :imdbRating, :imdbVotes

end
