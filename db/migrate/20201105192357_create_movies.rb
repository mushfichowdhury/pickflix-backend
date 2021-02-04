class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :backdrop
      t.string :release_date
      t.string :genre_ids
      t.integer :movie_id
      t.string :title
      t.string :tagline
      t.integer :runtime
      t.string :overview
      t.integer :popularity
      t.string :poster
      t.integer :vote_average
      t.integer :vote_count
      t.string :watch_providers
      t.string :homepage

      t.timestamps
    end
  end
end
