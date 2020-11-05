class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :netflixid
      t.string :title
      t.string :image
      t.string :synopsis
      t.string :rating
      t.string :media
      t.string :released
      t.string :runtime
      t.string :largeimage
      t.string :unogsdate
      t.string :imdbid
      t.string :download
      t.integer :priority
      t.string :genre

      t.timestamps
    end
  end
end
