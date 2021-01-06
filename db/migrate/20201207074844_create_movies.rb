class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :URL
      t.string :movieType
      t.string :rating
      t.integer :minutes
      t.integer :year
      t.string :genres
      t.integer :votes
      t.date :released
      t.string :directors
      t.datetime :createdTime

      t.timestamps
    end
  end
end
