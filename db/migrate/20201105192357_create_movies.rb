class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :backdrop
      t.string :first_air_date
      t.string :genre_ids
      t.integer :movie_id
      t.string :name
      t.string :origin_country
      t.string :original_language
      t.string :original_name
      t.string :overview
      t.integer :popularity
      t.string :poster
      t.integer :vote_average
      t.integer :vote_count

      t.timestamps
    end
  end
end
