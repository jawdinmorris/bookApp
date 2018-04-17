class CreateFavouriteBookUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :favourite_book_users do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
