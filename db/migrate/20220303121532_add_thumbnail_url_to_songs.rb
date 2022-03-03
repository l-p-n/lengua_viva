class AddThumbnailUrlToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :resources, :thumbnail_url, :string
  end
end
