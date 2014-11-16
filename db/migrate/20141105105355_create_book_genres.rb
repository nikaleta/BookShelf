class CreateBookGenres < ActiveRecord::Migration
  def change
    create_table :book_genres do |t|
      t.integer :genre_id
      t.integer :book_id

      t.timestamps
    end
  end
end
