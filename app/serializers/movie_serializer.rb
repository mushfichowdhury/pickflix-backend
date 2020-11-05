class MovieSerializer < ActiveModel::Serializer
  attributes :id, :netflixid, :title, :image, :synopsis, :rating, :type, :released, :runtime, :largeimage, :unogsdate, :imdbid, :download
end
