class AddSongToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :song, :string
    change_column :tracks, :song, :string, null: false
  end
end
