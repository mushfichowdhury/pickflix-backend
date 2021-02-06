class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :image
      t.integer :age
      t.string :city
      t.string :favorite_genre
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
