class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id
      t.text :lyrics
      t.string :single

      t.timestamps
    end

    add_index :tracks, :album_id
  end
end
