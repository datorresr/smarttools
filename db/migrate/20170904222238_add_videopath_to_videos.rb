class AddVideopathToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :picturepath, :string
  end
end
