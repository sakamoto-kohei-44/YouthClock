class RenameYoutubeUrlInSongs < ActiveRecord::Migration[6.1]
  def change
    rename_column :songs, :youtube_url, :youtube_id
  end
end
