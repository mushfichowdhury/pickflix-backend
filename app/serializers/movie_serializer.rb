class MovieSerializer < ActiveModel::Serializer
  attributes :id, :backdrop, :first_air_date, :genre_ids, :movie_id, :name, :origin_country, :original_language, :original_name, :overview, :popularity, :poster, :vote_average, :vote_count
end
