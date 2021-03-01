class AddUpdateCountToVideos < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :update_count, :integer, default: 0
  end
end
