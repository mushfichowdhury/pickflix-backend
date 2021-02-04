class MovieSerializer < ActiveModel::Serializer
  attributes :backdrop, :release_date, :genre_ids, :movie_id, :title, :tagline, :runtime, :overview, :popularity, :poster, :vote_average, :vote_count, :watch_providers, :homepage
end
