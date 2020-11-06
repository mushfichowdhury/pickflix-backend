class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :netflixid
      t.string :title
      t.string :image
      t.string :rating
      t.string :media
      t.string :runtime
      t.string :largeimage
      t.string :imdbid
      t.integer :priority
      t.string :genre
      t.string :year
      t.string :released
      t.string :rated
      t.string :director
      t.string :writer
      t.string :actors
      t.string :plot
      t.string :language
      t.string :country
      t.string :awards
      t.string :poster
      t.string :imdbRating
      t.string :imdbVotes

      t.timestamps
    end
  end
end
