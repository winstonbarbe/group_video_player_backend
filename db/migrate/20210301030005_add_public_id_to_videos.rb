class AddPublicIdToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :public_id, :string
  end
end
