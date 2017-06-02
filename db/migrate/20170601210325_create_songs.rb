class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :duration
      t.string :genre
      t.string :artist

      t.timestamps
    end
  end
end
