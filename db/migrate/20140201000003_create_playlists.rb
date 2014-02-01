class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.text :embed_code
      t.timestamps
    end
  end
end
